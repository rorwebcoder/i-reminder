class EventsController < ApplicationController
		before_filter :validate_id, :only => [:send_sms]
		
		def index
				@events = Event.all
		end
		
		def new
				@event = Event.new
		end
		
		def create
				@event = Event.create(params[:event])
				puts @event.errors.inspect
				if @event.save
						redirect_to events_path
				else
						render :new
				end
		end
		
		def send_sms
				if request.post?
						@twilio_manager = TwilioManager.new
						@twilio_manager.send_sms(params[:mobile_number], @event.sms_content)
				end
		end
		
		def validate_id
				if Event.exists?(params[:id])
						@event = Event.find(params[:id])
				else
						return redirect_to events_path
				end
		end
end

