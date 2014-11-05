class CreateGigabitEthernets < ActiveRecord::Migration
  def change
    create_table :gigabit_ethernets do |t|
      t.belongs_to :device, index: true
      t.text :name
      t.text :description
      t.text :speed

      t.timestamps
    end
  end
end
