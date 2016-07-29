class AddDentistIdPatientIdDiagnosesIdToTreatment < ActiveRecord::Migration
  def change
    add_reference :treatments, :dentist, index:true , foreign_key: true 
    add_reference :treatments, :patient, index:true , foreign_key: true 
    add_reference :treatments, :diagnoses, index:true , foreign_key: true 
  end
end
