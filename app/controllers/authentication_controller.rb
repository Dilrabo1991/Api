class AuthenticationController < ApplicationController
    skip_before_action :auther
   
    def authenticate
      command = AuthenticateUser.call(params[:email], params[:password])
   
      if command.success?
        render json: { bearer_token: command.result }
      else
        render json: { error: command.errors }, status: :unauthorized
      end
    end
end