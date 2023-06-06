class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # need to update notice to alers for success message
    # need to update route to a different one
    if @reservation.save
      redirect_to reservations_path, notice: "your reservation has now been created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:first_name, :last_name, :email, :phone_number, :covers, :reservation_notes, :dietary_requirements)
  end

end
