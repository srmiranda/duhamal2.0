class EventsController < ApplicationController
  def index
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "Event created successfully."
      redirect_to event_path(@event)
    else
      flash[:errors] = @event.errors.full_messages.join(", ")
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  protected

  def event_params
    params.permit(:name, :startDate, :endDate, :players, :scoreType, :flights,
    :cut, :hometown, :handicap, :dotCard, :includeTen, :includeTies)
  end
end
