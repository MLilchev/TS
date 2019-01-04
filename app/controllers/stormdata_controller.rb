class StormdataController < ApplicationController


  def index
    #provide data for maps
    @state_data=State.all
  end

  def show
    #provide data for selected state route dynamically
    @state_no = State.find(params[:id])
    @eventdata=Event.all
    @state_raw = State.where(id: params[:id]).pluck.flatten
  end
end
