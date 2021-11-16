class WatchesController < ApplicationController

  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:id])
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.new(watch_params)
    @watch.user = current_user
    if @watch.save
    redirect_to watch_path(@watch)
    else
      render :new
    end
  end

  def watch_params
  params.require(:watch).permit(:model, :year, :brand, photos: [])
  end
end
