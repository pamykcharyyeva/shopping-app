class UsersController < ApplicationController

    skip_before_action :authorized, only: [:new, :create]
    def index
        @users =User.all
    end

     def show
       @user = User.find(params[:id])
     end

     def new
       @user = User.new
       @favorites = Favorite.all
     end

     def create
       @user = User.create(user_params)
       session[:user_id] = @user.id
       redirect_to @user
     end

     def destroy # DELETE request /users/:id
       @user = User.find(params[:id])
       @user.destroy
       flash[:notice] = 'You deleted your account!'
       redirect_to new_user_path
     end


      private

      def user_params
        params.require(:user).permit(:username, :password)
      end


end
