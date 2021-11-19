class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @watch = Watch.find(params[:watch_id])
    @booking = Booking.new
    @booking.watch = @watch
  end

  def create
    @watch = Watch.find(params[:watch_id])
    @booking = Booking.new(booking_params)
    @booking.watch = @watch
    @booking.user = current_user
    if @booking.save
      redirect_to watch_bookings_path(@booking), notice: "You have now booked the watch"
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :watch_id)
  end
end
