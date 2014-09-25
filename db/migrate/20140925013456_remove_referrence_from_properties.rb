class RemoveReferrenceFromProperties < ActiveRecord::Migration
  def change
    remove_reference :properties, :property, index: true
  end
end
