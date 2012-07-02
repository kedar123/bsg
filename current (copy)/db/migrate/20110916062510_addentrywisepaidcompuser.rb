class Addentrywisepaidcompuser < ActiveRecord::Migration
  def self.up
     add_column :competitions_users, :paidentry, :string
  end

  def self.down
    remove_column :competitions_users, :paidentry
  end
end
