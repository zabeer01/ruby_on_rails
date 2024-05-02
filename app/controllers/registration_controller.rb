class RegistrationController < ApplicationController
    def new
        @user = User.new
    end

    def create
      @user = User.new(user_params)
        # render plain:"thanks"
        #render plain: params[:user] it gives the jason of form submitting like 
        #{"email"=>"asd", "password"=>"qwe", "password_confirmation"=>"qwe"}
        #so we want to save it 
    end

    private 
    def user_params
        params.require(:user).permit(:email,:password,:password_confirmation)
    end

    
end
