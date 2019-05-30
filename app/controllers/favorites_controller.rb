class FavoritesController < ApplicationController
    def index
     @favorites = Favorite.all
   end

   def show
   @categories = Category.all
   end

   def new
       @favorite = Favorite.new
   end

   def create
      # byebug
      @favorite = Favorite.new(name: params[:favorite][:name],link: params[:favorite][:link], user_id: params[:id], category_id: params[:favorite][:category_id])
       @favorite.save
      redirect_to favorites_path
  end

  def edit
      @favorite = Favorite.find(params[:id])
end

    def update
     @favorite = Favorite.find(params[:id])
     @favorite.update(name: params[:favorite][:name],link: params[:favorite][:link], user_id: params[:id], category_id: params[:favorite][:category_id])
     @favorite.save
     redirect_to favorites_path
    end




   def destroy
      @favorite = Favorite.find(params[:id])
      @favorite.destroy
      redirect_to favorites_path
   end


    private
    def service_params
      params.require(:favorite).permit(:name, :link, :user_id, :category_id)
    end


end
