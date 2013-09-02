class Event < ActiveRecord::Base
		
		attr_accessible :title, :description, :start_date, :end_date
		
		validates :title, presence: true
		validates :description, presence: true
		validates :start_date, presence: true
		validates :end_date, presence: true
		
		def sms_content
				"#{self.title}, #{self.description} @ #{self.start_date}"
		end
		
end
