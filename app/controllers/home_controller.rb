class HomeController < ApplicationController
  skip_before_filter :verify_authenticity_token

  skip_before_action :authenticate_user!

  def index
  if signed_in?
    if current_user.is_admin?(current_user)
      #redirect to customer root
      redirect_to admin_dashboard_path

    elsif current_user.is_donor?(current_user)
      #redirect to donor root
      redirect_to donors_dashboard_path

    elsif current_user.is_recepient?(current_user)
      #redirect to rec root
      redirect_to recepients_dashboard_path
    end

  end
end



end
