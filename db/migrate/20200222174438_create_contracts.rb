class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.integer :id_company
      t.integer :id_athlete
      t.date :contract_sta
      t.date :contract_end
      t.text :description
      t.timestamps
    end
  end
end
