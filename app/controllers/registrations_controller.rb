class RegistrationsController < Devise::RegistrationsController
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
