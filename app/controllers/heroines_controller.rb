class HeroinesController < ApplicationController
  
  before_action :heroine_params, only: :create 

  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = @heroine.power
  end 

  def new
    @heroine = Heroine.new 

  end 

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
    
      redirect_to heroines_path
    else 
      flash[:error] = @heroine.errors.full_messages
      
      redirect_to new_heroine_path
    end 
  end 


  
  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end 


end
