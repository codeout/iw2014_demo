class DeviceCondition
  def initialize(params)
    @params = params
  end

  def devices
    relation = Device.all
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
end
