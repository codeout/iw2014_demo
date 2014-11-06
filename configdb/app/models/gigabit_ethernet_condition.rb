class GigabitEthernetCondition
  def initialize(params)
    @params = params
  end

  def gigabit_ethernets
    relation = GigabitEthernet.all
    relation = relation.where(device_id: device_id) if device_id?
    relation = relation.where(name: name) if name?
    relation
  end

  private

  def name?
    name.present?
  end

  def name
    @params['name']
  end

  def device_id?
    device_id.present?
  end

  def device_id
    @params['device_id']
  end
end
