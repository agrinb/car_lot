class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @carmakes = Carmake.all
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to @car
      flash[:notice] = "Success! Your car was saved."
    else
      flash[:alert] = "Could not save."
      render :new
    end
  end

  protected
  def car_params
    params.require(:car).permit(:carmake_id, :color, :year, :mileage, :description)
  end
end
