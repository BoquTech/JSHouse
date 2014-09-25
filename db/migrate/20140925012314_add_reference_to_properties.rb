class AddReferenceToProperties < ActiveRecord::Migration
  def change
    add_reference :properties, :property, index: true
  end
end
