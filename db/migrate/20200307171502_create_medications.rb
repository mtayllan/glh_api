class CreateMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :medications do |t|
      t.references :disease, null: false, foreign_key: true
      t.references :medicine, null: false, foreign_key: true
      t.integer :situation

      t.timestamps
    end
  end
end
