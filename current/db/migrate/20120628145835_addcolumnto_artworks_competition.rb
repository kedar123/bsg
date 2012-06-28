class AddcolumntoArtworksCompetition < ActiveRecord::Migration
  def self.up
  
  add_column :artworks_competitions, :artists_comm,    :integer
  add_column :artworks_competitions, :artists_comm_paid,    :boolean 
  add_column :artworks_competitions, :artists_sales_prsn,    :string 
  add_column :artworks_competitions, :sales_person_comm,    :integer 
  add_column :artworks_competitions, :sales_person_comm_paid,    :boolean
  end

  def self.down
  end
end
