class ChatController < ApplicationController
    def index
        @messages = Message.all
        @message = Message.new
    end
    def show
        @user = User.find(params[:id])
        @messages = Message.all
        @message = Message.new
    end
    def new
        @message = Message.new
    end
    def edit
    end
    def update
    end
    def create
        @message = Message.create(msg_params)
        if @message.save
            puts "message save"
            ActionCable.server.broadcast "chat_channel",
            content: @message.body
        else
            puts "message save failed"
        end
    end
    def destroy
    end
    private
    def msg_params
        params.require(:message).permit(:body)
    end
end
