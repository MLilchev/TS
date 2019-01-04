class EventdetailsController < ApplicationController

  def index
    #provide data for json
    @eventdata= Event.all

  end

  def show

    @event = Event.find(params[:id])
    #retrieve event id and episode id (primary/foreign keys in event and episode tables)
    @event_id_raw = request.fullpath.slice(14..16)
    @episode_id_raw = Event.where(id: @event_id_raw).pluck.flatten[23]
    #retrieve full event and episode record
    @event_record = Event.where(id: @event_id_raw).pluck.flatten
    @episode_record = Episode.where(id: @episode_id_raw).pluck.flatten
    #retrieve state information from state table
    @state = State.where(id: @episode_record[4]).pluck.flatten
    #retrieve data for map
    @eventdata=Event.all
    #provide data for json
    @singleevent = Event.where(id: @event_id_raw)
  end

end
