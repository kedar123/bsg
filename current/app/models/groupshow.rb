class Groupshow < ActiveRecord::Base
  has_many :groupshowartworks
  has_many :usergroupshow ,:dependent => :delete_all

end
