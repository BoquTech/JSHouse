class Feedback < ActiveRecord::Base
	validates :name,:phone,:email, presence:true
	belongs_to :property
end
