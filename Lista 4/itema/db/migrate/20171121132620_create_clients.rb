class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.text :address
      t.string :cpf
      t.string :rg

      t.timestamps
    end
  end
end
