class ChangeNameDiagnosesIdTopDiagnosisId < ActiveRecord::Migration
  def change
     rename_column :treatments, :diagnoses_id, :diagnosis_id
  end
end
