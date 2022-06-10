class SpeciesController < ApplicationController

  def index
    @species = {"species": "cat"}
    json_response(@species)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end