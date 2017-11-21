class RenameCarTypeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :cars, :type, :cartype
  end
end
