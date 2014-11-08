module Cli
  class Juniper
    def initialize(device)
      @device = device
    end

    def platform
      raw = `jlogin -c "show version" #{@device.fqdn}`
      raw =~ /> show version\s*$.*Model:\s*(.*)$.*\[(.*)\]\s*$/m
      {'machine' => $1.try(&:strip), 'os-name' => 'JUNOS', 'os-version' => $2.try(:strip)}
    end
  end
end
