class PetsController < ApplicationController

  def index
    @pets = Pet.all
    json_response(@pets, :ok)
  end

  def show
    @species = Species.find(params[:species_id])
    @pet = Pet.find(params[:id])
    json_response(@pet, :ok)
  end

  def create
    @species = Species.find(params[:species_id])
    @pet = Species.pet.create!(pet_params)
    json_response(@pet, :created)
  end

  def update
    @species = Species.find(params[:species_id])
    @pet = Pet.find(params[:id])
    if @pet.update!(pet_params)
      render status: 200, json: {
        message: "#{@pet.name} has been successfully updated."
      }
    end
  end

  def destroy
    @species = Species.find(params[:species_id])
    @pet = Pet.find(params[:id])
    if @pet.destroy
      render status: 200, json: {
        message: "#{@pet.name} has been successfully removed."
      }
    end
  end

  private
  def pet_params
    params.permit(:name, :klass, :level, :quote, :species_id)
  end
end