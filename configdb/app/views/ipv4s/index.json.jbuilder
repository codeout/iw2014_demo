json.array!(@ipv4s) do |ipv4|
  json.extract! ipv4, :id, :gigabit_ethernet_id, :address, :primary
  json.url ipv4_url(ipv4, format: :json)
end
