class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.timestamp :startdate
      t.timestamp :enddate
      t.references :client, foreign_key: true
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
