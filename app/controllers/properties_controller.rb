class PropertiesController < ApplicationController
  layout "property",only:[:show]
  skip_before_action :authorize
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json



  def index
    @properties = Property.all
  
    end

  # GET /properties/1
  # GET /properties/1.json
  def show
    print '你好'

    @city=@property.city
    @address=Address.where(city: @city).first
   
   require 'uri'

   require 'net/http'
  
   @building_name2=@property.building_name
   @description2=@property.description
   @address2=@property.address
   @features2=@property.features

   @building_name =  URI.encode(@building_name2)
   @description=  URI.encode(@description2)
   @features=  URI.encode(@features2)
   @address=  URI.encode(@address2)
   uri = URI("http://openapi.baidu.com/public/2.0/bmt/translate?client_id=wczI7xUBqYDdxOWIQsnoCAi5&q=#{@building_name}%0A#{@description}%0A#{@features}%0A#{@address}&from=auto&to=auto
")

  Net::HTTP.start(uri.host, uri.port,
  :use_ssl => uri.scheme == 'https') do |http|
  request = Net::HTTP::Get.new uri
  response = http.request request
  res=JSON.parse response.body

  @building_name1=res["trans_result"][0]['dst']
  @description1=res["trans_result"][1]['dst'].html_safe
  @features1=res["trans_result"][2]['dst'].html_safe
  @address1=res["trans_result"][3]['dst'].html_safe

end

   
  end

  # GET /properties/new
  def new

    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
     @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:title, :description, :address, :bedrooms, :bathrooms, :family_rooms, :reception_rooms, :latitude, :longitude, :features, :agent_id, :agent_name, :date_available, :building_name, :district, :indoor_size, :saleable_area, :buy, :rent, :refid, :building_age, :outdoor_size, :float, :inclusive_display, :inclusive_mfee, :inclusive_govr, :address_display, :street, :view, :layout, :floor, :uuid, :user_id, :data_source, :enabled,:tag_list, item_images_attributes: [:id, :_destroy], item_images: [])
    end
   
end
