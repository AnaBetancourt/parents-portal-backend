class MeetupsController < ApplicationController

    class CommentsController < ApplicationController

        def index
            meetups = Meetup.all
            render json: MeetupSerializer.new(meetups)
        end
    
        def create
            meetup = Meetup.new(meetup_params)
    
            if meetup.save
                render json: MeetupSerializer.new(meetup)
            else
                render json: {error: "Unable to add meetup."}
            end
    
        end
    
        def show
            meetup = Meetup.find(params[:id])
            render json: MeetupSerializer.new(meetup)
        end
    
    
        private
    
        def meetup_params
            params.require(:meetup).permit(:title, :date, :time, :location, :description, :interested_count)
        end
    
    end

end
