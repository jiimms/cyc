class DonorsController < ApplicationController
  before_action :set_donor, only: [:dashboard,:show, :edit, :update, :destroy]
  before_action :ensure_donor!

  def index
    @donors = Donor.all
  end
  def dashboard
    
  end

  def show
  end

  def new
    @donor = Donor.new
  end

  def edit
  end

  def create
    @donor = Donor.new(donor_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @donor.save
        format.html { redirect_to @donor, notice: 'Donor was successfully created.' }
        format.json { render :show, status: :created, location: @donor }
      else
        format.html { render :new }
        format.json { render json: @donor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @donor.update(donor_params)
        format.html { redirect_to @donor, notice: 'Donor was successfully updated.' }
        format.json { render :show, status: :ok, location: @donor }
      else
        format.html { render :edit }
        format.json { render json: @donor.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @donor.destroy
    respond_to do |format|
      format.html { redirect_to donors_url, notice: 'Donor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donor
      @donor = Donor.where(user_id: current_user.id)[0]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donor_params
      params.require(:donor).permit(:about_info, :home_address, :country_of_origin, :reason_to_help)
    end

    def ensure_donor!

      unless current_user.user_type_id == 2
        flash[:danger] = "You must be a donor to view this page"
      redirect_to root_path

        
      end
      
    end
end
