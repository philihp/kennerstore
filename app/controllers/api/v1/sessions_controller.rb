class Api::V1::SessionsController < ApplicationController
  def create
    user_email = params[:session][:email]
    user_password = params[:session][:password]
    user = user_email.present? && User.find_by(email: user_email)

    if user.valid_password? user_password
      sign_in user, store: false
      user.generate_authentication_token!
      user.save
      render status: 200, location: [:api, user], json: {
        data: {
          type: "sessions",
          id: user.auth_token
        }
      }
    else
      render json: { errors: "Invalid email or password" }, status: 422
    end
  end
  def destroy
    user = User.find_by(auth_token: params[:id])
    user.generate_authentication_token!
    user.save
    head 204
  end
end
