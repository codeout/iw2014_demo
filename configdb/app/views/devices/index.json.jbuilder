json.array!(@devices) do |device|
  json.extract! device, :id, :autnum_id, :name, :fqdn, :platform
  json.url device_url(device, format: :json)
end
