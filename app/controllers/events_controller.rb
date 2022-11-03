class EventsController < ApplicationController
    before_action :check_for_login

    def index
        @events = Event.all
       
    end

    def userEvents
        @events = @current_user.events
    end

    def show
        @event = Event.find params[:id] 
        @users = @event.users
    end

    def new
        @event = Event.new
    end

    def create
        event = Event.create(event_params) 
        @current_user.events << event
        redirect_to events_path
    end
    
    def join
        @event = Event.find params[:id]
        @current_user.events << @event
        redirect_to @event
    end

    def leave
        @event = Event.find params[:id]
        @current_user.events.delete(@event)
        redirect_to @event
    end


    private
    def event_params
        params.require(:event).permit(:title, :appointed, :description, :arrival_time, :sport_id, :lat, :lng)
    end
end