class Admin::ArtworksController < ApplicationController
  
  def index
    @current_objects = Artwork.find(:all)
    @all_comp_art_work = ArtworksCompetition.find(:all)
    render  :layout=> "gallery_promoting"
  end
  
  def edit_inplace
  
  p " I m in  Artworks controller "
  
  p params
    p "these are my params"
       
    render :text=>params[:update_value]
    
    puts params[:update_value]
    puts " Saving Data.......................................................>>>>>>>"
    
    artworks=Artworks.find(params[:id])
    p artworks
    
    
     if params[:element_id] == "artist_comm"   
       artworks.update_attribute('artists_commission',params[:update_value])
       artworks.artworks_competitions.update_attribute('artists_comm',params[:update_value])
       
       
    end
       
     
  
  end
  
  
end
