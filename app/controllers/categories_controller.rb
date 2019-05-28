class CategoriesController < ApplicationController
    def index
     @categories = Category.all
   end

   def sort_cat
       @cateogries = Category.sort_cat
   end

   def show
       # byebug
       @category = Category.find(params[:id])
   end

   def new
       @category = Category.new
   end

   def create
       @category = Category.new(name: params[:category][:name])
       @category.save
   end

   def edit
       @category = Category.find_by(params[:id])
   end

   def update
       @category = Category.find_by(params[:id])
       @category.update(name: params[:category][:name])
       @category.save
   end


end
