json.array!(@autnums) do |autnum|
  json.extract! autnum, :id, :asn, :name
  json.url autnum_url(autnum, format: :json)
end
