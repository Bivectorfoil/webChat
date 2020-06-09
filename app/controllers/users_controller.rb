class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def show
        @user = User.find(params[:id])
        @user_id = params[:id].to_i # url string to integer
    end
    def new
        @user = User.new
    end
    def edit
    end
    def update
    end
    def create
    end
    def destroy
    end
end
