class Addartworkcomppaidandunpaid < ActiveRecord::Migration
  def self.up
    add_column :artworks_competitions, :paid, :boolean
  end

  def self.down
    remove_column :artworks_competitions, :paid 
  end
  
end
