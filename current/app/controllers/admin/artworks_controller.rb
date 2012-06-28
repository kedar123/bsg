class Admin::ArtworksController < ApplicationController
  
  def index
    @current_objects = Artwork.find(:all)
    @all_comp_art_work = ArtworksCompetition.find(:all)
    render  :layout=> "gallery_promoting"
  end
  
  def edit_inplace
  
  p " I m in  Artworks controller "
  
  p params
    p "this are my params"
       
    render :text=>params[:update_value]
    
    puts params[:update_value]
    puts " Saving Data.......................................................>>>>>>>"
       
  
  end
  
  
end
