class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :city
      t.string :city_img

      t.timestamps
    end
  end
end
