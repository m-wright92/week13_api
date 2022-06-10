class PetsController < ApplicationController

  def index
    @pets = {"pet": "Garfield"}
    json_response(@pets)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end