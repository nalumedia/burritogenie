json.array!(@burritolocations) do |burritolocation|
  json.extract! burritolocation, :id, :burritolocation_name, :burritolocation_description, :burritolocation_address
  json.url burritolocation_url(burritolocation, format: :json)
end
