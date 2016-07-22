class CreateDiagnoses < ActiveRecord::Migration
  def change
    create_table :diagnoses do |t|
      t.integer :nopieza
      t.text :diagnostico
      t.integer :costo
      t.date :fecha

      t.timestamps null: false
    end
  end
end
