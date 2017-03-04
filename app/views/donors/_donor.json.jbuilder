json.extract! donor, :id, :about_info, :home_address, :country_of_origin, :reason_to_help, :created_at, :updated_at
json.url donor_url(donor, format: :json)