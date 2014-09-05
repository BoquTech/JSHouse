class AddManagerToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :note, :string
    add_column :feedbacks, :status, :string
    add_column :feedbacks, :manager, :string
  end
end
