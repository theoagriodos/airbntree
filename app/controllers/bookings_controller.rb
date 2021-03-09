class BookingsController < ApplicationController

  def new
    @tree = Tree.find(params[:tree_id])
    @booking = Booking.new
  end

  def create
    raise
    @booking = booking.find(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

private

  # def set_booking
  #   @booking = Booking.find(params[:id])
  # end

  def booking_params
    params.require(:booking).permit(:date, :status)
  end
end
