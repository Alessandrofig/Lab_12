class UsersController < ApplicationController
    before_action :authenticate_user!
  
    def profile
      @user = current_user
      @posts = @user.posts
      @comments = @user.comments
    end
end