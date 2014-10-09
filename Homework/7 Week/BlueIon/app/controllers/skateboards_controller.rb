class SkateboardsController < ApplicationController
    def index
    @skateboards = Skateboard.all
  end

  def show
    @skateboard = Skateboard.find params[:id]
  end

  def new
    @skateboard = Skateboard.new
  end

  def create
    @skateboard = Skateboard.create skateboard_params
    if @skateboard.save
    redirect_to skateboards_path
    else 
      render :new
    end
  end

  def edit
    @skateboard = Skateboard.find params[:id]
  end

  def update
    @skateboard = Skateboard.find params[:id]
    @skateboard.update_attributes skateboard_params
    redirect_to skateboards_path
  end

  def destroy
    @skateboard = Skateboard.find params[:id]
    @skateboard.delete
    redirect_to skateboards_path
  end

private
  def skateboard_params
    params.require(:skateboard).permit(:name, :retail_price, :size, :description, :image)
  end

end
