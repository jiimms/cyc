class CategoriesController < ApplicationController
 
	def index
		@categories=Category.all
	end 	

  def new
  	@category=Category.new
  end

  def show
  	@categories=Category.all
  	@category=Category.find(params[:id])
  end

  def create
  	@category=Category.new
  	if @category.save(category_params)
  		redirect_to @category
  	else
  		render 'new'
  	end
  end

  def edit
  end

  private

  	def category_params
  		params.require(:category).permit(:title, :description, :text)
  	end
end
