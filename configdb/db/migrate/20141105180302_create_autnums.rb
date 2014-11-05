class CreateAutnums < ActiveRecord::Migration
  def change
    create_table :autnums do |t|
      t.integer :asn
      t.text :name

      t.timestamps
    end
  end
end
