class WatchesController < ApplicationController
  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.new(watch_params)
    @watch.list = @list
    @watch.save
    redirect_to watch_path(@list)
  end
end
