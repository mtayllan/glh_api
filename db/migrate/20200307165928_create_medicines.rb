class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.text :composition, array: true
      t.string :descriptiont
      t.integer :group

      t.timestamps
    end
  end
end
