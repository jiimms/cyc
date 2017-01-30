class EducationsController < ApplicationController
  before_action :set_education, only: [:edit, :show, :destroy, :update]
  

  def index
  	@educations=Education.all
  end

  def show
  end

  def new
  	@education=Education.new
  end

  def create
  	@education=Education.new(education_params)
  	if @education.save
  		redirect_to @education
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	if @education.update(education_params)
  		redirect_to root_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@education.delete
  	redirect_to root_path
  end

  
  private
  def set_education
  	@education=Education.find(params[:id])
  end

  def education_params
  	params.require(:education).permit(:name, :bio, :bankDetails)
  end
end