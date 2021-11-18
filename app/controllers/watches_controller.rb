class WatchesController < ApplicationController
  def index
    @watches = Watch.all
    @markers = @watches.geocoded.map do |watch|
      {
        lat: watch.latitude,
        lng: watch.longitude,
        info_window: render_to_string(partial: "info_window", locals: { watch: watch })
      }
    end
  end

  def show
    @booking = Booking.new
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
    params.require(:watch).permit(:model, :year, :brand, :description, :address, photos: [])
  end
end
