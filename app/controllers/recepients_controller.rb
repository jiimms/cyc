class RecepientsController < ApplicationController
  before_action :set_recepient, only: [:profile, :edit, :dashboard]
  before_action :set_update, only: [:update, :show, :destroy]
  before_action :ensure_recepient!, except: [:categories, :index]
  before_action :authenticate_user!, except: [:categories, :index]


  def dashboard
  end
  def index
    @recepients = Recepient.all
    
  end
  def categories
    @recepients = Recepient.where(category_id: params[:category_id])
  end

  def profile
    # render :edit
  end

  def show
  end

  def new
    @recepient = Recepient.new
  end

  def edit
  end

  def create
    @recepient = Recepient.new(recepient_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @recepient.save
        format.html { redirect_to @recepient, notice: 'Recepient was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @recepient.update(recepient_params)
        format.html { redirect_to @recepient, notice: 'Recepient was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @recepient.destroy
    respond_to do |format|
      format.html { redirect_to recepients_url, notice: 'Recepient was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_update
      @recepient = Recepient.find(params[:id])     
    end

    def set_recepient
      @recepient = Recepient.where(user_id: current_user.id)[0]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recepient_params
      params.require(:recepient).permit(:about_info, :home_address, :country_of_origin, :reason_for_need, :need_amount, :avatar, :category_id)
    end

    def ensure_recepient!
      unless current_user.user_type_id == 3
        flash[:danger] = "You must be a recepient to view this page"
        redirect_to root_path
      end
      
    end
end
