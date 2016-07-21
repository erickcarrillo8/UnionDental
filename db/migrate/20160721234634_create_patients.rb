class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :nombre
      t.string :apellido
      t.text :direccion
      t.integer :telefono
      t.integer :celular
      t.string :RFC
      t.date :fecha_nac

      t.timestamps null: false
    end
  end
end
