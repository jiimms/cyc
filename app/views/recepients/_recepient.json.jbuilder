json.extract! recepient, :id, :about_info, :home_address, :country_of_origin, :reason_for_need, :need_amount, :created_at, :updated_at
json.url recepient_url(recepient, format: :json)