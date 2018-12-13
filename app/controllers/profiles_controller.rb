class ProfilesController < ApplicationController

  def show
    render json: @user, each_serializer: ProfileSerializer
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:email, :password, :username,
                                 :birthday, :gender, :avatar)
  end

end
