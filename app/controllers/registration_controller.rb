class RegistrationController < ApplicationController
  skip_before_action :require_login, only: [:index]
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path, notice: "Successfully created the account"
      else
        # flash[:alert] = "Something was wrong"
        render :new  
        # render plain:"thanks"
        # render plain: params[:user] # It gives the JSON of form submission like 
        # {"email"=>"asd", "password"=>"qwe", "password_confirmation"=>"qwe"}
        # so we want to save it 
      end
    end
  
    private 
  
    def user_params
      params.require(:user).permit(:user_name,:email, :password, :password_confirmation)
    end
  end
  