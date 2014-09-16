class Property < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :item_types

  validates_presence_of :description, :address, :building_name, :district, :buy, :rent, :refid, :building_age, :outdoor_size, :street, :layout

  validates_uniqueness_of :refid

  before_create :set_uuid
  has_many :item_images
  accepts_nested_attributes_for :item_images, allow_destroy: true
  def set_uuid
    self.uuid = UUIDTools::UUID.random_create.hexdigest
  end
end
