class AddAutnumIdToDevice < ActiveRecord::Migration
  def change
    add_reference :devices, :autnum, index: true
  end
end
