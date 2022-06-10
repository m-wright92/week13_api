class SpeciesController < ApplicationController

  def index
    @species = Species.all
    json_response(@species, :ok)
  end

  def show
    @species = Species.find(params[:id])
    json_response(@species, :ok)
  end

  def create
    @species = Species.create!(species_params)
    json_response(@species, :created)
  end

  def update
    @species = Species.find(params[:id])
    if @species.update!(species_params)
      render status: 200, json: {
        message: "#{@species.name} has been successfully updated."
      }
    end
  end

  def destroy
    @species = Species.find(params[:id])
    if @species.destroy
      render status: 200, json: {
        message: "#{@species.name} has been successfully removed."
      }
    end
  end

  private
  def species_params
    params.permit(:species_name, :latin_name)
  end
end