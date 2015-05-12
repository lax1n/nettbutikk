class UsersController < ApplicationController
  before_filter :authenticate_user!
  def show
    @user = User.find_by_username(params[:username])
    redirect_to root_path, alert: 'Ingen tilgang!' unless @user == current_user
  end
end
