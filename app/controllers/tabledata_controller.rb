class TabledataController < ApplicationController

  def index
    #provide table data
    @rawnarrative = Event.all
  end
end
