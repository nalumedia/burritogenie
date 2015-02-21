json.array!(@delivertostatuses) do |delivertostatus|
  json.extract! delivertostatus, :id, :delivertostatus_name, :deliverttostatus_definition
  json.url delivertostatus_url(delivertostatus, format: :json)
end
