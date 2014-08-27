class Feedback < ActiveRecord::Base
	validates :name,:phone,:email, presence:true
end
