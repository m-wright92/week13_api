class SpeciesController < ApplicationController

  def index
    @species = Quote.all
    json_response(@species)
  end

  def show
    @species = Quote.find(params[:id])
    json_response(@species)
  end

  def create
    @species = Quote.create(species_params)
    json_response(@species)
  end

  def update
    @species = Quote.find(params[:id])
    @species.update(species_params)
  end

  def destroy
    @species = Quote.find(params[:id])
    @species.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def species_params
    params.permit(:species_name, :latin_name)
  end
end