class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :plate
      t.integer :type
      t.integer :year

      t.timestamps
    end
  end
end
