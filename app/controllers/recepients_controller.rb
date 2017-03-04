class RecepientsController < ApplicationController
  before_action :set_recepient, only: [:show, :edit, :update, :destroy]

  # GET /recepients
  # GET /recepients.json
  def index
    @recepients = Recepient.all
  end

  # GET /recepients/1
  # GET /recepients/1.json
  def show
  end

  # GET /recepients/new
  def new
    @recepient = Recepient.new
  end

  # GET /recepients/1/edit
  def edit
  end

  # POST /recepients
  # POST /recepients.json
  def create
    @recepient = Recepient.new(recepient_params.merge(user_id: 3))

    respond_to do |format|
      if @recepient.save
        format.html { redirect_to @recepient, notice: 'Recepient was successfully created.' }
        format.json { render :show, status: :created, location: @recepient }
      else
        format.html { render :new }
        format.json { render json: @recepient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recepients/1
  # PATCH/PUT /recepients/1.json
  def update
    respond_to do |format|
      if @recepient.update(recepient_params)
        format.html { redirect_to @recepient, notice: 'Recepient was successfully updated.' }
        format.json { render :show, status: :ok, location: @recepient }
      else
        format.html { render :edit }
        format.json { render json: @recepient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recepients/1
  # DELETE /recepients/1.json
  def destroy
    @recepient.destroy
    respond_to do |format|
      format.html { redirect_to recepients_url, notice: 'Recepient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recepient
      @recepient = Recepient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recepient_params
      params.require(:recepient).permit(:about_info, :home_address, :country_of_origin, :reason_for_need, :need_amount)
    end
end
