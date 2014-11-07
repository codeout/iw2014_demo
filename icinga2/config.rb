require 'active_resource'
require 'erb'

class ConfigResource < ActiveResource::Base
  self.site = 'http://localhost:3000'

  def self.all
    @_all ||= super
  end
end

class Device < ConfigResource
end

class GigabitEthernet < ConfigResource
  def self.find_by_device_id(id)
    all.find {|i| i.device_id == id }
  end
end

class Ipv4 < ConfigResource
  def self.find_by_gigabit_ethernet_id(id)
    all.find {|i| i.gigabit_ethernet_id == id }
  end

  def address
    super.sub(/\/.*$/, '')
  end
end

Device.all.each do |device|
  interface = GigabitEthernet.find_by_device_id(device.id)
  next unless interface

  ipv4 = Ipv4.find_by_gigabit_ethernet_id(interface.id)
  puts ERB.new(File.read('template.conf.erb')).result(binding)
end

