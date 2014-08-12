class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.string :introduce
      t.string :style
      t.decimal :price
      t.string :location
      t.decimal :area
      t.text :discription
      t.references :address, index: true

      t.timestamps
    end
  end
end
