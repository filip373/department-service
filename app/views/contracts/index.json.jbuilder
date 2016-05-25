json.array!(@contracts) do |contract|
  json.extract! contract, :id, :title, :description, :due_date, :showroom_id
  json.url contract_url(contract, format: :json)
end
