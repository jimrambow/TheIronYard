class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @hello_world = "Ben you look confused."
    @list_of_students = ["Sam", "Jamie", "Rob", "Belinda", "Michael"]
  end
end
