class CreateIpv4s < ActiveRecord::Migration
  def change
    create_table :ipv4s do |t|
      t.belongs_to :gigabit_ethernet, index: true
      t.text :address
      t.boolean :primary

      t.timestamps
    end
  end
end
