class ProfilesController < ApplicationController
  before_action :set_user

  def show
    render json: @user,
           serializer: ProfileSerializer
  end

  def update
    if @user.update(user_params)
      render json: @user,
             serializer: ProfileSerializer
    else
      render json: @user.errors,
             status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = current_user

    head :unprocessable_entity unless @user
  end

  def user_params
    params.require(:user).permit(:username, :birthday,
                                 :gender, :avatar)
  end
end
