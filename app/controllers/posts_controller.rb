class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

    def index
        @posts = Post.all
    end

    def new
        @post = current_user.posts.build
    end

    def create
        #accept only safe, intended data, and builds on the signed in user
        @post = current_user.posts.build(post_params)

        if @post.save
            redirect_to root_path
        else
            render :new
        end
    end

    private

    #this makes it so any data in the :post hash doesn't contain any malicious data, only the permitted fields
    def post_params
        params.require(:post).permit(:title, :body)
    end
end
