class ArtworksCompetition < ActiveRecord::Base

	belongs_to :artwork
	belongs_to :competition
	belongs_to :competitions_user,:foreign_key=>"competitions_users_id"
 
end
