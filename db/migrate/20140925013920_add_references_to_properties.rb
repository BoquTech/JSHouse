class AddReferencesToProperties < ActiveRecord::Migration
  def change
    add_reference :properties, :address, index: true
  end
end
