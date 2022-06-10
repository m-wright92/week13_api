module Response
  extend ActiveSupport::Concern
  include ExceptionHandle

  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
