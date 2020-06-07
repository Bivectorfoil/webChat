class SessionsController < ApplicationController
    include SessionsHelper
    def new
    end
    def create
        user = User.find_by(username: params["sessions"]["username"])
        if user && user.authenticate(user, params["sessions"]["password"])
            log_in user
            redirect_to user
        else 
            flash[:alert] = 'Invalid username/password!'
            render 'new'
        end
    end
    def destroy
        log_out
        render 'new'
    end
end
