json.array!(@gigabit_ethernets) do |gigabit_ethernet|
  json.extract! gigabit_ethernet, :id, :device_id, :name, :description, :speed
  json.url gigabit_ethernet_url(gigabit_ethernet, format: :json)
end
