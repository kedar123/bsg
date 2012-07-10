class Changecolumnofcompetition < ActiveRecord::Migration
  def self.up
    #change_column_default(:competitions, :title, nil)
    remove_column(:competitions, :title)
    add_column(:competitions, :title,:string)
    
  end

  def self.down
  end
end
