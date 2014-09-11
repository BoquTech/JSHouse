class AddCountryToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :country, :string
    add_column :properties, :city, :string
  end
end
