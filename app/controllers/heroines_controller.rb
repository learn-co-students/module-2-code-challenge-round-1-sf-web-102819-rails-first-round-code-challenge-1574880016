class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create 
    if @heroine = Heroine.new(heroine_params)
      @heroine.save
      redirect_to '/heroines'
    else
      render 'new'
    end
  end


  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end

end
