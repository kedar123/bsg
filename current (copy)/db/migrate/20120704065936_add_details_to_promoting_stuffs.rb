class AddDetailsToPromotingStuffs < ActiveRecord::Migration
  def self.up
  add_column :promoting_stuffs, :details,  :string
  end

  def self.down
  end
end
