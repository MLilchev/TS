class HeatmapController < ApplicationController
  def index
    @eventdata = Event.all.pluck.map { |a| [a[18], a[20]] }
  end
end
