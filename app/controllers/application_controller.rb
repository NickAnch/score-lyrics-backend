class ApplicationController < ActionController::Base
  include ActionController::MimeResponds

  protect_from_forgery
  before_action :authenticate_user!, :set_current_user

  respond_to :json

  def set_current_user
    User.current = current_user
  end
end
