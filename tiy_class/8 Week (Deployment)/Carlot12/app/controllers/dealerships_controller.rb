class DealershipsController < ApplicationController
  before_action :authenticate_user!
  respond_to :json, :html
  def index
    @dealerships = Dealership.all
  end

  def show
    @dealership = Dealership.find params[:id]
    @cars = @dealership.cars.includes(:features)
    @comment = @dealership.comments.new
    respond_to do |format|
      format.js
    end
  end

  def new
    @dealership = Dealership.new
  end

  def create
    @dealership = Dealership.new dealership_params
    if @dealership.save
      redirect_to dealerships_path
    else
      render :new
    end
  end

  def edit
    @dealership = Dealership.find params[:id]
  end

  def update
    @dealership = Dealership.find params[:id]
    @dealership.update_attributes dealership_params
    redirect_to dealerships_path
  end

  def destroy
    @dealership = Dealership.find params[:id]
    @dealership.delete
    redirect_to dealerships_path
  end

  def create_comment
    @dealership = Dealership.find params[:id]
    @dealership.comments.create comment_params
    # dealership_path(@dealership)
    redirect_to @dealership
  end

  def delete_comment
    @dealership = Dealership.find params[:id]
    @comment = Comment.find params[:comment_id]
    @comment.delete
    redirect_to @dealership
  end
private
  def dealership_params
    params.require(:dealership).permit(:name, :description, :address)
  end

  # Whitelisting parameters
  # Strong params - In rails
  def comment_params
    params.require(:comment).permit(:content)
  end
end
