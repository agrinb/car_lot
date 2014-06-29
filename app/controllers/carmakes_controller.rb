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
      redirect_to @carmake, notice: 'Successfully added Car Make.'
    else
      render :new
    end
  end

  protected
  def carmake_params
    params.require(:carmake).permit(:make)
  end
end
