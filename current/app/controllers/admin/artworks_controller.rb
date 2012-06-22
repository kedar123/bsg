class Admin::ArtworksController < ApplicationController
  
  def index
    @current_objects = Artwork.find(:all)
    @all_comp_art_work = ArtworksCompetition.find(:all)
    render  :layout=> "gallery_promoting"
  end
end
