class Commission < ActiveRecord::Base

belongs_to :artwork
belongs_to :artworks_competition

end
