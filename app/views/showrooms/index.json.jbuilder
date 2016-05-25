json.array!(@showrooms) do |showroom|
  json.extract! showroom, :id, :name, :make, :address, :phone_number
  json.url showroom_url(showroom, format: :json)
end
