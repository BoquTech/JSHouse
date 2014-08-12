class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :province
      t.string :city

      t.timestamps
    end
  end
end
