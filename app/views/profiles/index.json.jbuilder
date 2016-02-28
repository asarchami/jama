json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :current_pic, :current_cover, :first_name, :last_name, :website, :phone, :country, :city, :address, :visible
  json.url profile_url(profile, format: :json)
end
