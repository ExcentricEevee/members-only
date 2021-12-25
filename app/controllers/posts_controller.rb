class PostsController < ApplicationController
    before_action :require_login, only: [:new, :create]
    #before_action :authenticate_user!

    def index
        @posts
    end

    def new

    end

    private

    def require_login
        unless logged_in?
            flash[:error] = "You must be logged in to do that."
            redirect_to new_user_session
        end
    end
end
