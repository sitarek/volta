class EventsController < ApplicationController
  expose(:event, attributes: :event_attributes)
  expose(:events)

  def index
  end

  def new
  end

  def fav; end

  def show
    @comment = Comment.new
  end

  def edit
  end

  def create
    if event.save
      flash[:success] = "V'oila!"
      redirect_to events_path
    else
      flash[:error] = 'Nie poszło nam...'
      render :new
    end
  end

  def update
    if event.update(event_attributes)
      flash[:success] = "V'oila!"
      redirect_to events_path
    else
      flash[:error] = 'Nie poszło nam...'
      render :edit
    end
  end

  def destroy
    if event.destroy
      flash[:success] = "V'oila!"
      redirect_to events_path
    else
      flash[:success] = "Nie poszło nam.."
      redirect_to events_path
    end
  end

  private

  def event_attributes
    params.require(:event).permit(:name, :description)
  end
end
