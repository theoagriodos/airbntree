class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @bookings_to_be_validated = Booking.where(status: "pending").select do |booking|
      booking.tree.user == current_user
    end

    @booked_trees = Booking.where(status: "validated").select do |booking|
      booking.user_id == current_user.id
    end
  end
end
