class CategoriesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :set_category, only: [:show, :edit, :update]
 
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

  def update
    if @category.update(category_params)
      flash[:success] = "Category successfully updated"
      redirect_to browse_categories_path
    else
      render :edit
    end
    
  end

  private
  def set_category
    @category = Category.find(params[:id])
    
  end

  	def category_params
  		params.require(:category).permit(:title, :description, :avatar)
  	end
end
