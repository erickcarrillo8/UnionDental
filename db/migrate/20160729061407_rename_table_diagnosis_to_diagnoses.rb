class RenameTableDiagnosisToDiagnoses < ActiveRecord::Migration
  def change
    rename_table :diagnosis, :diagnoses
  end
end
