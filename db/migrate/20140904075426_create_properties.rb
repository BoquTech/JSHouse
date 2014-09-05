class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :family_rooms
      t.integer :reception_rooms
      t.float :latitude
      t.float :longitude
      t.text :features
      t.string :agent_id
      t.string :agent_name
      t.datetime :date_available
      t.string :building_name
      t.string :district
      t.float :indoor_size
      t.float :saleable_area
      t.float :buy
      t.float :rent
      t.string :refid
      t.float :building_age
      t.string :outdoor_size
      t.string :float
      t.boolean :inclusive_display
      t.string :inclusive_mfee
      t.string :inclusive_govr
      t.boolean :address_display
      t.string :street
      t.string :view
      t.string :layout
      t.string :floor
      t.string :uuid
      t.integer :user_id
      t.string :data_source
      t.boolean :enabled

      t.timestamps
    end
  end
end
