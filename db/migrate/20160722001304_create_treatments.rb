class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.text :tratamiento
      t.float :abono
      t.datetime :fecha

      t.timestamps null: false
    end
  end
end
