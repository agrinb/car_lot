class CarmakesController < ApplicationController

  def index
    @carmakes = Carmake.all
  end

  def show
    @carmake = Carmake.find(params[:id])
  end

  def new
    @carmake = Carmake.new
  end

  def create
    @carmake = Carmake.new(carmake_params)
    if @carmake.save
      redirect_to @carmake
      flash[:notice] = "Success! Your Make was saved."
    else
      flash[:alert] = "Could not save."
      render :new
    end
  end

  protected
  def carmake_params
    params.require(:carmake).permit(:make, :car_country)
  end
end
