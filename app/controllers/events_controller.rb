class EventsController < ApplicationController

  respond_to :js


  # GET: list all events
  def index
    start_time = Time.at(params[:start].to_i)
    end_time = Time.at(params[:end].to_i)

    range = start_time.beginning_of_day..end_time.end_of_day

    @events = Event.where(start: range)
  end

  # GET: create a new event
  def new

  end

  # POST: create event in database
  def create
    @event = Event.new(params[:event])
    if @event.save
      #success
      @event
    else
      #failed
      nil
    end

  end

  # GET: edit an event
  def edit
    @event = Event.find(params[:id])
  end

  # GET: show an event
  def show
    @event = Event.find(params[:id])
  end

  # POST: update event in database
  def update
    if @event.update_attributes(params[:event])
      @event
    else
      nil
    end
  end

  # POST: delete an event from database
  def destroy
    @event.destroy
  end

end