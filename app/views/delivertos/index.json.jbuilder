json.array!(@delivertos) do |deliverto|
  json.extract! deliverto, :id, :deliverto_street, :deliverto_zip, :deliverto_phone, :deliverto_instructions
  json.url deliverto_url(deliverto, format: :json)
end
