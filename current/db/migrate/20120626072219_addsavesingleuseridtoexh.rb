class Addsavesingleuseridtoexh < ActiveRecord::Migration
  def self.up
     add_column :exhibitions, :single_entry_invoice_user_id,    :integer    
  end

  def self.down
  end
end
