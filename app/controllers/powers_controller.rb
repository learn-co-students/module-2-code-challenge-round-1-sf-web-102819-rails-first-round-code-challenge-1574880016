class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def new
  end

  def create
  end

  def show
    @power = Power.find(params[:id])
  end

end
