class Addpaiddatetoinvoice < ActiveRecord::Migration
  def self.up
     add_column :invoices, :paid_date,    :date    
  end

  def self.down
     
  end
end
