class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.string :cep
      t.string :city
      t.string :street
      t.string :district
      t.string :state
      t.string :number
      t.string :complement

      t.timestamps
    end
  end
end
