class Ipv4Condition
  def initialize(params)
    @params = params
  end

  def ipv4s
    relation = Ipv4.all
    relation = relation.where(gigabit_ethernet_id: gigabit_ethernet_id) if gigabit_ethernet_id?
    relation
  end

  private

  def gigabit_ethernet_id?
    gigabit_ethernet_id.present?
  end

  def gigabit_ethernet_id
    @params['gigabit_ethernet_id']
  end
end
