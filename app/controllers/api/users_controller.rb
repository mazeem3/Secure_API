class Api::UsersController < ApplicationController
  protect_from_forgery with: :null_session


def create
  @user = User.create
  @user.username = params[:user][:username]
  @user.password = params[:user][:password]
  if @user.save
    render :user
  else
    render json: @user.errors, status: 422
  end
end

end
