class CategoriesController < ApplicationController
 
	def index
		@categories = Category.all
	end 	

  def new
  	@category = Category.new
  end

  def show
  	@category = Category.find(params[:id])
  end

  def create
  	@category = Category.new(category_params)
  	if @category.save
  		redirect_to @category
  	else
  		render 'new'
  	end
  end

  def edit
  end

  private

  	def category_params
  		params.require(:category).permit(:title, :description)
  	end
end
