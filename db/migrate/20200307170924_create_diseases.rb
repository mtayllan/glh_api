class CreateDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :diseases do |t|
      t.string :name
      t.string :description
      t.string :cid, unique: true 

      t.timestamps
    end
    add_index :diseases, [:cid], unique: true
  end
end
