class House < ActiveRecord::Base
  belongs_to :address
  has_many :pictures
end
