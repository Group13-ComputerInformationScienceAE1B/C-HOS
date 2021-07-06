class PostsController < ApplicationController
    def index
        @posts = Post.where(category_id:params[:id])
        @category = Category.find(params[:id])
    end
    def new
        @post = Post.new
    end
    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to controller: 'posts', action: 'show', id: @post.id
        else
            redirect_to :action => "new"
        end
    end
    def show
        @post = Post.find(params[:id])
    end
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to controller: 'categories', action: 'index'
    end
    def edit
        @editpost = Post.find(params[:id])
    end
    def update
        @editpost = Post.find(params[:id])
        @editpost.update(post_params)
        redirect_to controller: 'posts', action: 'show', id: @editpost.id
    end
    private
    def post_params
        params.require(:post).permit(:title, :overview, :img, :category_id)
    end
end
