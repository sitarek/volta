class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_attributes)

    if @event.save
      flash[:success] = "V'oila!"
      redirect_to events_path
    else
      flash[:error] = 'Nie poszło nam...'
      render :new
    end
  end

  private

  def event_attributes
    params.require(:event).permit(:name, :description)
  end

end
