class CreateItemImages < ActiveRecord::Migration
  def change
    create_table :item_images do |t|
      t.string :refid
      t.string :image_url
      t.references :property, index: true

      t.timestamps
    end
  end
end
