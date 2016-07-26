class Api::UsersController < ApplicationController
    protect_from_forgery with: :null_session



    before_action do
        request.format = :json
    end

    def create
      @user = User.new params.require(:user).permit(:username, :password)
      if @user.save

        render :user
      else
        render json: @user.errors, status: 422
      end

    end

    def delete
        @user = User.find_by id: params[:id]
        @user.destroy
        if User.find_by id: params[:id]
            render json: { message: 'Delete failed' }, status: 422
        else
            render json: { message: 'User deleted' }, status: 201
        end
    end
end
