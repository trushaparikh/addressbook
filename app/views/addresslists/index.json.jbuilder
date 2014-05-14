json.array!(@addresslists) do |addresslist|
  json.extract! addresslist, :id, :street1, :street2, :city, :state, :country, :phone
  json.url addresslist_url(addresslist, format: :json)
end
