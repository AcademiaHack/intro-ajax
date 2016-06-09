class PetsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @pet = @user.pets.build
  end

  def create
    @user = User.find(params[:user_id])
    @pet = @user.pets.build(pet_params)
    if @pet.save
      redirect_to @pet
    else
      render :new
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :gender, :type, :diet)
  end
end
