class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])

    render json: @user,
           each_serializer: UserSerializer
  end

  def create
    @user = User.create(user_params)

    if @user.persisted?
      render json: @user
    else
      render json: @user.errors,
             status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,
                                 :username, :birthday, :gender, :avatar)
  end
end
