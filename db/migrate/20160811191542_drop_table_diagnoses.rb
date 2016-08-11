class DropTableDiagnoses < ActiveRecord::Migration
  def change
    drop_table :diagnoses 
  end
end
