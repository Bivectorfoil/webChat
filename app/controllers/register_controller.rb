class RegisterController < ApplicationController
    include SessionsHelper
    def index
        @user = User.new
    end
    def show
        @user = User.find(params[:id])
    end
    def new
        @user = User.new
    end
    def edit
    end
    def update
    end
    def create
        @user = User.create(user_params)
        if @user.save
            log_in @user
            flash[:success] = "Welcome to chat room my friend!"
            redirect_to @user
        else
            render "new"
        end
    end
    def destroy
    end
    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
