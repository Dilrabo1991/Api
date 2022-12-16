class UsersController < ApplicationController
  skip_before_action :auther
  def create
    @user = User.new(user_params)
  
    if @user.save
      render json: { status: 200,
      msg: "User created successfully"
      } #authenticate
    else
      render json: { status: 500,
      msg: "User creation failed"
      }
    end
  end

  private

  def user_params
    params.permit(
      :name,
      :email,
      :password,
      :password_confirmation,
    )
  end
end
