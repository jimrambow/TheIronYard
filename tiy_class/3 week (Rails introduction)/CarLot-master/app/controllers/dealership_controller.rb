class DealershipController < ApplicationController

  def index
    @dealerships = Dealership.new
  end
end

