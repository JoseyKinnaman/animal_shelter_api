class PetsController < ApplicationController
  def index
    if name = params[:name]
      @pets = Pet.search(name)    
    elsif params[:page].present?
      @pets = Pet.all 
      @pets = Pet.page(params[:page]).per(10)   
    else
      @pets = Pet.all 
    end
    json_response(@pets)
  end

  def show
    @pet = Pet.find(params[:id])
    json_response(@pet)
  end

  def create
    @pet = Pet.create!(pet_params)
    json_response(@pet, :created)
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update!(pet_params)
      render status: 200, json: {
        message: "This pet has been successfully updated."
      }
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    if @pet.destroy
      render status: 200, json: {
        message: "This pet entry has successfully been deleted."
      }
    end
  end

  def random
    @pet_one = Pet.first.id
    @last_pet = Pet.last.id
    @random_pet = rand(@pet_one...@last_pet)
    @pet = Pet.find(@random_pet)
    json_response(@pet)
  end

  private

  def pet_params
    params.permit(:breed, :age, :gender, :desc, :name, :species)
  end
end