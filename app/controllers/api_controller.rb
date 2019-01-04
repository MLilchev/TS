class ApiController < ApplicationController

  def state
    @state=State.all
    render json: @state=params[:id] ? State.find(params[:id]) : State.all
  end

  def episode
    @episode=Episode.all
    render json: @episode=params[:id] ? Episode.find(params[:id]) : Episode.all
  end

  def event
    @event=Event.all
    render json: @event
  end

end
