class UserController < ApplicationController
    def index
        @users = User.all
    end
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path, notice: "Item was successfully deleted."
    end

    private
    def require_login
        unless session[:user_id]
        flash[:alert] = "You must be logged in to access this page"
        redirect_to sign_in_path
        end
    end
end