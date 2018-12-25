class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @user = User.find_by(id: params[:id])

    render json: @user,
           serializer: UserSerializer
  end
end
