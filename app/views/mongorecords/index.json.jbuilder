json.array!(@mongorecords) do |mongorecord|
  json.extract! mongorecord, :id
  json.url mongorecord_url(mongorecord, format: :json)
end
