class FarmersController < ApplicationController
 before_action :set_farmer, only: [:edit, :show, :destroy, :update]
  

  def index
  	@farmers=Farmer.all
  end

  def show
  end

  def new
  	@farmer=Farmer.new
  end

  def create
  	@farmer=Farmer.new(farmer_params)
  	if @farmer.save
  		redirect_to @farmer
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	if @farmer.update(farmer_params)
  		redirect_to root_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@farmer.delete
  	redirect_to root_path
  end

  
  private
  def set_farmer
  	@farmer=Farmer.find(params[:id])
  end

  def farmer_params
  	params.require(:farmer).permit(:name, :bio, :bankDetails)
  end
end
