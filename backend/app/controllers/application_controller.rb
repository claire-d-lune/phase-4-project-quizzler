class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordNotFound, with: :display_error

  def display_error e
    render json: {error: e.message}
  end

end
