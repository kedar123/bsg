class Addentryfieldtocompetition < ActiveRecord::Migration
  def self.up
   add_column :competitions, :firstentry,  :integer
   add_column :competitions, :secondentry,  :integer
   add_column :competitions, :thirdentry,  :integer
   add_column :competitions, :fourthentry,  :integer
   add_column :competitions, :fifthentry,  :integer
   add_column :competitions, :sixthentry,  :integer
   add_column :competitions, :sevenentry,  :integer
   add_column :competitions, :eightentry,  :integer
   add_column :competitions, :nineentry,  :integer
   add_column :competitions, :tenentry,  :integer
   
  end

  def self.down
  end
end
