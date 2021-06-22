class UsersController < ApplicationController
    def search
        if params[:search_word].present?
            @users = User.where('user_name LIKE ?', "%#{params[:search_word]}%")
        else
            @users=User.none
        end
    end
end
