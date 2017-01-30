class WarwidowsController < ApplicationController
  before_action :set_warwidow, only: [:edit, :show, :destroy, :update]
  

  def index
  	@warwidows=Warwidow.all
  end

  def show
  end

  def new
  	@warwidow=Warwidow.new
  end

  def create
  	@warwidow=Warwidow.new(warwidow_params)
  	if @warwidow.save
  		redirect_to @warwidow
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	if @warwidow.update(warwidow_params)
  		redirect_to root_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@warwidow.delete
  	redirect_to root_path
  end

  
  private
  def set_warwidow
  	@warwidow=Warwidow.find(params[:id])
  end

  def warwidow_params
  	params.require(:warwidow).permit(:name, :bio, :bankDetails)
  end
end
