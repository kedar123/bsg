class CreateCommissions < ActiveRecord::Migration
  def self.up
    create_table :commissions do |t|
       t.integer :art_comm
       t.boolean :art_comm_paid
       t.string  :sales_person
       t.integer :sales_person_comm
       t.boolean :sales_person_comm_paid
       t.integer :artwork_id
       t.integer :artworks_competition_id
       t.integer :edition_no
      t.timestamps
    end
  end

  def self.down
    drop_table :commissions
  end
end


