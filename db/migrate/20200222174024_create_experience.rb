class CreateExperience < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :name_event
      t.string :ranking
      t.string :scoring
      t.date :date_event
      t.string :country
      t.text :description
      t.timestamps
    end
  end
end
