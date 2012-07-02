class Addcompetitionfield1 < ActiveRecord::Migration
  def self.up
	  #add_column :competitions, :resultmsg,    :text
  end

  def self.down
	  add_column :competitions, :resultmsg
  end
end
