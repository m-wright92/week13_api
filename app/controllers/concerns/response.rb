require 'active_support/concern'
module Response
  extend ActiveSupport::Concern
  included do
    self.
  end
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
