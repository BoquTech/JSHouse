class Picture < ActiveRecord::Base
  belongs_to :house
  mount_uploader :photo, PhotoUploader
end
