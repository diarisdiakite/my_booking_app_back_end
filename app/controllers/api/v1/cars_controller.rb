class Api::V1::CarsController < ApplicationController
  before_action :set_car, only: %i[ show edit update destroy ]

  # GET /cars or /cars.json
  def index
    @cars = Car.all
    render json: @cars
  end

  # GET /cars/1 or /cars/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_car
    @car = Car.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def car_params
    params.require(:car).permit(:name, :description)
  end
end
  