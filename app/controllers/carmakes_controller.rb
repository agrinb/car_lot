class CarmakesController < ApplicationController
  def index
  end

  def new
    @car_make = Carmake.new
  end

  def create
  end
end
