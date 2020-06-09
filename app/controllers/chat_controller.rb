class ChatController < ApplicationController
    def index
        @messages = Message.all
        @message = Message.new
    end
    def show
        @user = User.find(params[:id])
        @messages = Message.all
    end
    def new
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
