class Peer < ActiveRecord::Base
  belongs_to :device
  belongs_to :autnum
end
