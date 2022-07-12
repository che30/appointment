class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create
  def index
    @user = User.all
  end

  # POST /signup
  # return authenticated token upon signup
  def create
    @user = User.new(user_params)
    if @user.save
      @user.update(patient: true)
      auth_token = AuthenticateUser.new(@user.email, @user.password).call
      response = { message: Message.account_created,
                   auth_token: auth_token, user: @user }
      json_response(response, :created)
    else
      response = @user.errors.full_messages.join(';')
      json_response({ errors: response }, :unauthorized)
      # render json: { status: 500, errors: response}
    end
  end

  def show
    @user = User.find(params[:id])
    json_response(@user)
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end
end
