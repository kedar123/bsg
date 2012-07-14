class Addpopuptocompetition < ActiveRecord::Migration
  def self.up
    add_column :competitions_users, :drop_of_work, :string
  end

  def self.down
  end
end
