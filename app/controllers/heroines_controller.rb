class HeroinesController < ApplicationController
  before_action :get_heroine, only: [:show]
  def index
    @heroines = Heroine.all
    #should params to see if we have power key
    # @heroines.search(params[:power])
  end

  def show
    # @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(heroine_params)
    # @heroine.save
    redirect_to @heroine
  end

  # def edit
  #   @heroine = Heroine.find(params[:id])
  # end

  # def update
  #   @heroine = Heroine.find(params[:id])
  #   @heroine.update(heroine_params)
  #   redirect_to @heroine
  # end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def get_heroine
    @heroine = Heroine.find(params[:id])
  end
end
