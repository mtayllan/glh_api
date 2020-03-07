class CreateDefenses < ActiveRecord::Migration[6.0]
  def change
    create_table :defenses do |t|
      t.references :proceeding, null: false, foreign_key: true

      t.timestamps
    end
  end
end
