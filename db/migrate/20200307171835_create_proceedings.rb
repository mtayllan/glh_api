class CreateProceedings < ActiveRecord::Migration[6.0]
  def change
    create_table :proceedings do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :medication, null: false, foreign_key: true

      t.timestamps
    end
  end
end
