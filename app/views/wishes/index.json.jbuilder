json.array!(@wishes) do |wish|
  json.extract! wish, :id, :wish_address, :wish_phone, :wish_zip, :wish_instructions
  json.url wish_url(wish, format: :json)
end
