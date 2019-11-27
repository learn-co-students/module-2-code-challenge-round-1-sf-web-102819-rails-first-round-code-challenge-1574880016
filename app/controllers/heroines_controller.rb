class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
      @heroine = Heroine.find(params["id"])
  end

  def new
      @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    # Check if it's valid first
    if @heroine.valid?
      @heroine.save
      redirect_to heroines_path(@heroine)
    else
      render "new"
    end

    # @heroine = Heroine.create(heroine_params)
    # redirect_to heroines_path(@heroine)

  end

  def edit
      @heroine = Heroine.find(params["id"]) 
  end

  def update
      @heroine = Heroine.find(params["id"])
      if @heroine.update(heroine_params)
          redirect_to @heroine
      else
          render "edit"
      end
  end

  private

  def heroine_params
      params.require(:heroine).permit(:name, :super_name)
  end


end
