class AddReferenceToFeedbacks < ActiveRecord::Migration
  def change
    add_reference :feedbacks, :property, index: true
  end
end
