class WatchesController < ApplicationController

  def index
    if params[:query].present?
      sql_query = " \
        watches.brand @@ :query \
        OR watches.model @@ :query \
        OR watches.address @@ :query \
        OR watches.description @@ :query \
      "
      @watches = Watch.where(sql_query, query: "%#{params[:query]}%")
   
    else
      @watches = Watch.all
    end
    @markers = @watches.geocoded.map do |watch|
      {
        lat: watch.latitude,
        lng: watch.longitude,
        info_window: render_to_string(partial: "info_window", locals: { watch: watch })
      }
    end
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
  params.require(:watch).permit(:model, :year, :brand, :description, :address, photos: [])
  end
end
