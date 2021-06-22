class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    def new
        @newpost = Post.new
    end
    def create
        post = Post.new(post_params)
        if post.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
        
    end
    def show
        @showpost = Post.find(params[:id])
    end
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to :action => "index"
    end
    def edit
        @editpost = Post.find(params[:id])
    end
    def update
        @editpost = Post.find(params[:id])
        @editpost.update(post_params)
        redirect_to :action => "index"
    end
    private
    def post_params
        params.require(:post).permit(:title, :overview, :img)
    end
end
