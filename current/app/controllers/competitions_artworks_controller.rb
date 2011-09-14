class CompetitionsArtworksController < ApplicationController
#ok this is artwork controller and last comment
	layout "gallery_promoting"  
	 def index
	 end
		
	 def edit
	 end
    
         def update
         end

	 def destroy
	 end 	 
	
	def show
	@image_array = ['fworkimage','sworkimage','tworkimage','foworkimage','fiworkimage','siworkimage','seworkimage','eworkimage','nworkimage','teworkimage']	
	@artwork = Comptartwork.find(params[:id])
	@current_object = Competition.find(@artwork.competition_id)
	
		
	end	
end

