class UpdateNameTable < ActiveRecord::Migration[5.2]
  def change
	rename_table :atletes, :athletes
  end
end
