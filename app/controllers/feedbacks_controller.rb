class FeedbacksController < ApplicationController
 skip_before_action :authorize, only:[:new ,:show,:edit,:create,:update,:destroy]
  before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  # GET /feedbacks
  # GET /feedbacks.json
  def index
    @feedbacks = Feedback.all 
  end

  # GET /feedbacks/1
  # GET /feedbacks/1.json
  def show
  end

  # GET /feedbacks/new
  def new
    @feedback = Feedback.new
  end

  # GET /feedbacks/1/edit
  def edit
  end

  # POST /feedbacks
  # POST /feedbacks.json
  def create
    
    @feedback = Feedback.create(feedback_params)
    respond_to do |format|
      if @feedback.save
        FeedbackNotifier.new_feedback(@feedback).deliver 
        format.html { redirect_to @feedback }
        format.js
        format.json { render :show, status: :created, location: @feedback }
      else
        format.html { redirect_to property_path(@property) }
        format.js { render action: 'create_fail' }
      end
    end
  end

  # PATCH/PUT /feedbacks/1
  # PATCH/PUT /feedbacks/1.json
  def update
    respond_to do |format|
      if @feedback.update(feedback_params)
        if @feedback.reply.present?
          FeedbackNotifier.reply_feedback(@feedback).deliver
        end
        format.html { redirect_to feedbacks_url, notice: 'Feedback was successfully updated.' }
        format.json { render :show, status: :ok, location: @feedback }
      else
        format.html { render :edit }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedbacks/1
  # DELETE /feedbacks/1.json
  def destroy
    @feedback.destroy
    respond_to do |format|
      format.html { redirect_to feedbacks_url, notice: 'Feedback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedback
      @feedback = Feedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feedback_params
      params.require(:feedback).permit(:name, :phone, :email, :reply ,:message,:property_id)
    end
end
