class CreateExperienceRelation < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :belongs_to, :atletes

    
  end
end
