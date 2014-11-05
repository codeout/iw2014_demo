class GigabitEthernet < ActiveRecord::Base
  belongs_to :device

  # FIXME: Migrate into app/decorators along with active_decorator gem
  def name_with_device
    "#{device.name} - #{name}"
  end
end
