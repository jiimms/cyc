class DonationsController < ApplicationController
  before_action :set_donations
  before_action :set_donation, only: [:show, :edit, :update, :destroy]

  # GET donors/1/donations
  def index
    @donations = @donor.donations
  end

  # GET donors/1/donations/1
  def show
  end

  # GET donors/1/donations/new
  def new
    @donation = @donor.donations.build
  end

  # GET donors/1/donations/1/edit
  def edit
  end

  # POST donors/1/donations
  def create
    @donation = @donor.donations.build(donation_params)

    if @donation.save
      redirect_to([@donation.donor, @donation], notice: 'Donation was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT donors/1/donations/1
  def update
    if @donation.update_attributes(donation_params)
      redirect_to([@donation.donor, @donation], notice: 'Donation was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE donors/1/donations/1
  def destroy
    @donation.destroy

    redirect_to donor_donations_url(@donor)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donations
      @donor = Donor.where(user_id: current_user.id)[0]
    end

    def set_donation
      @donation = @donor.donations.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def donation_params
      params.require(:donation).permit(:name, :amount, :recepient_id)
    end
end
