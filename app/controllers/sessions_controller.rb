class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[create]

  def create
    user = User.find_by(email: params[:email])

    if user&.valid_password?(params[:password])
      render json: user,
             each_serializer: SessionSerializer,
             status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy
    current_user&.authentication_token = nil
    if current_user.save
      head(:success)
    else
      head(:unauthorized)
    end
  end
end
