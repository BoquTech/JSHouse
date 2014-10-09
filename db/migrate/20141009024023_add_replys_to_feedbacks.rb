class AddReplysToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :reply, :string
  end
end
