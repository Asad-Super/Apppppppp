class UsersController < ApplicationController


    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if (@user.password == @user.confirm_password)
            if @user.save
                redirect_to root_path
            else
                render :new
            end
        else
            puts "Password does not match"
        end

    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :confirm_password)
    end
end
