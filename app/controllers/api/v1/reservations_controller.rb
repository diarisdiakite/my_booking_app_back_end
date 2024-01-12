class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show edit update destroy]

  # GET /reservations or /reservations.json
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  # GET /reservations/1 or /reservations/1.json
  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:car, :user, :finance_fee, :option_to_purchase_fee, :total_amount_payable,
                                        :duration)
  end
end
