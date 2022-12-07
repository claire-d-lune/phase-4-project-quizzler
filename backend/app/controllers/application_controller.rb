class ApplicationController < ActionController::API
  include ActionController::Cookies

  # rescue_from ActiveRecord::RecordNotFound, with: :display_error

  # def display_error 
  #   byebug
  # end

end
