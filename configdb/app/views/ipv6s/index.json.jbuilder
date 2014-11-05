json.array!(@ipv6s) do |ipv6|
  json.extract! ipv6, :id, :gigabit_ethernet_id, :address, :primary
  json.url ipv6_url(ipv6, format: :json)
end
