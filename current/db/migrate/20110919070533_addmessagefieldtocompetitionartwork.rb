class Addmessagefieldtocompetitionartwork < ActiveRecord::Migration
  def self.up
     add_column :artworks_competitions, :message, :string
  end

  def self.down
     remove_column :artworks_competitions, :message 
  end
end
