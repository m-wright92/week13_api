class SpeciesController < ApplicationController

  def index
    @species = Species.all
    json_response(@species)
  end

  def show
    @species = Species.find(params[:id])
    json_response(@species)
  end

  def create
    @species = Species.create!(species_params)
    json_response(@species)
  end

  def update
    @species = Species.find(params[:id])
    @species.update!(species_params)
  end

  def destroy
    @species = Species.find(params[:id])
    @species.destroy
  end

  private
  def species_params
    params.permit(:species_name, :latin_name)
  end
end