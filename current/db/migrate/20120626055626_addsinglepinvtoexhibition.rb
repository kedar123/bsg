class Addsinglepinvtoexhibition < ActiveRecord::Migration
  def self.up
    add_column :exhibitions, :single_entry_invoice,    :boolean    
  end

  def self.down
  end
end
