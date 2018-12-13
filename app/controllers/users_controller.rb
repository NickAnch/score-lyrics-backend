class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    render json: @user, each_serializer: UserSerializer
  end

  def create
    @user = User.new(user_params)

    @user.save
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :username,
                                 :birthday, :gender, :avatar)
  end

end
