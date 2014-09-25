class RemoveRefFromProperties < ActiveRecord::Migration
  def change
    remove_reference :properties, :address, index: true
  end
end
