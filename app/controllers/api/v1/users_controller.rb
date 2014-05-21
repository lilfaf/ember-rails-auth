class Api::V1::UsersController < Api::V1::BaseController
  def me
    @user = current_user
    respond_with @user
  end

  def index
    @users = User.all
    respond_with @users
  end
end
