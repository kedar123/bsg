class Folders < ActiveRecord::Migration
  def self.up
    create_table :mailfolders do |t|
      t.integer :user_id
      t.integer :parent_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :folders
  end
end
