class RenameTableDiagnosesToDiagnosis < ActiveRecord::Migration
  def change
    rename_table :diagnoses, :diagnosis
  end 
end
