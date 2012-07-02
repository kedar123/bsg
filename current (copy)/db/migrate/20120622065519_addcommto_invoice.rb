class AddcommtoInvoice < ActiveRecord::Migration
  def self.up
    add_column :invoices, :sales_person_id,    :integer
    add_column :invoices, :salespersoncom,    :integer
    add_column :invoices, :salespersoncompaidnotpaid,    :boolean
    add_column :invoices, :artist_id,    :integer
    add_column :invoices, :artistcom,    :integer
    add_column :invoices, :artistcomcompaidnotpaid,    :boolean
    
  end

  def self.down
  end
end
