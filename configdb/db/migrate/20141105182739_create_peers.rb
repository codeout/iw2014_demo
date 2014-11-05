class CreatePeers < ActiveRecord::Migration
  def change
    create_table :peers do |t|
      t.belongs_to :device, index: true
      t.belongs_to :autnum, index: true
      t.text :neighbor

      t.timestamps
    end
  end
end
