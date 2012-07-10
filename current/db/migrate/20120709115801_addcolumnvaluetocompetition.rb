class Addcolumnvaluetocompetition < ActiveRecord::Migration
  def self.up
    add_column :columnnameandheaders, :column_value,  :string
  end

  def self.down
  end
end
