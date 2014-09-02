class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end
  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.create subscriber_params
    if @subscriber.save
    redirect_to root_path
    else 
      render :new
    end
  end
  private
  def subscriber_params
    params.require(:subscriber).permit(:first_name, :last_name, :date_of_birth, :email)
  end
end
