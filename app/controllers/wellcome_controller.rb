class WellcomeController < ApplicationController
  def index
    @user = User.new
    @user.pets.build
  end
end
