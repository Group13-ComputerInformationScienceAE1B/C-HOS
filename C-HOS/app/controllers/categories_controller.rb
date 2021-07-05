class CategoriesController < ApplicationController
    def index
        @category = Category.new
        @categories = Category.all
    end
    
    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to categories_index_path
        else
            @categories = Category.all
            render 'index'
        end
    end
    
    def edit
        @category = Category.find(params[:id])
    end
    
    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        redirect_to categories_index_path
    end
    
    def update
        @category = Category.find(params[:id])
        @category.update(category_params)
        redirect_to categories_index_path
    end

    def followers
        @user = User.find_by(id: params[:id])
    end
    
private
    def category_params
        params.require(:category).permit(:category_name)
    end
end
