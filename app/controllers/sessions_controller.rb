class SessionsController < ApplicationController

  skip_before_action :verify_authenticity_token, :only => :create
  def create
    user = User.find_by(email: params[:email])

    if user && user.valid_password?(params[:password])
      render json: user, each_serializer: UserSerializer, status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy
    current_user&.authentication_token = nil
    if current_user.save
      head(:ok)
    else
      head(:unauthorized)
    end
  end
end
