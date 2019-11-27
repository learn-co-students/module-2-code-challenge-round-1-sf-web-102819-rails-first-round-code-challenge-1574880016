class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end


  def show 
    @heroine = Heroine.find(params[:id])
    # @link = @heroin.power.map{|power| power.name}
    # @powers = Power.find(params[:id])
  end


  def new
    @heroine = Heroine.new 
  end

  def create 
    @heroine = Heroine.new(heroine_params)
      if @heroine.valid?
         @heroine.save
         redirect_to heroine_path(@heroine)
      else
        flash[:errors] = @heroine.errors.full_messages
        render :new
      end 
  end

  def update 
    @heroine = Heroine.find(params[:id])
      if @heroine.valid?
         @heroine.update!(heroine_params)
         redirect_to heroine_path(@heroine)
      else
        flash[:errors] = @heroine.errors.full_messages
        redirect_to heroine_path(@heroine)
      end 
  end




  private 
  
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end









end
