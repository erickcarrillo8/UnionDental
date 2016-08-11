class CreateDiagnostics < ActiveRecord::Migration
  def change
    create_table :diagnostics do |t|
      t.integer :nopieza
      t.text :diagnostico
      t.float :costo
      t.date :fecha

      t.timestamps null: false
    end
  end
end
