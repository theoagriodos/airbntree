class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :destroy, :show]

  def new
    @tree = Tree.find(params[:tree_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @tree = Tree.find(params[:tree_id])
    @booking.tree_id = @tree.id
    @booking.user = current_user
    @booking.status = "En attente"
    if @booking.save
      redirect_to booking_path(current_user)
    else
      render :new
    end
  end

  def show
    @my_trees = current_user.trees
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

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:booked_at, :status)
  end
end
