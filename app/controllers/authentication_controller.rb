class AuthenticationController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate
  # return auth token once user is authenticated
  def authenticate
    # byebug
    auth_token =
      AuthenticateUser.new(params[:user][:email], params[:user][:password]).call
    user = User.find_by(email: params[:user][:email])
    json_response({ auth_token: auth_token, patient: user.patient })
  end

  private

  def auth_params
    params.permit(:email, :password,
                  'authentication' => %i[email password])
  end
end
