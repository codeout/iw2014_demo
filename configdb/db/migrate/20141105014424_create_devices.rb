class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.text :name
      t.text :fqdn
      t.text :platform

      t.timestamps
    end
  end
end
