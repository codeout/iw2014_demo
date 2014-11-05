class CreateIpv6s < ActiveRecord::Migration
  def change
    create_table :ipv6s do |t|
      t.belongs_to :gigabit_ethernet, index: true
      t.text :address
      t.boolean :primary

      t.timestamps
    end
  end
end
