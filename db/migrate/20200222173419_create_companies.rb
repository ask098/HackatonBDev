class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :acount_type
      t.string :nombre
      t.string :nacionality
      t.string :industry
      t.text :bio
    end
  end
end
