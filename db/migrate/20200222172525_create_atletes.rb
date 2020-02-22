class CreateAtletes < ActiveRecord::Migration[5.2]
  def change
    create_table :atletes do |t|
      t.string :account_type
      t.string :name
      t.string :age
      t.string :gender
      t.string :sport_name
      t.string :nacionality
      t.string :cur_company
      t.text :bio

      t.timestamps
    end
  end
end
