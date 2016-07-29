class AddDentistIdPatientIdToDiagnoses < ActiveRecord::Migration
  def change
    add_reference :diagnoses, :dentist, index:true , foreign_key: true 
    add_reference :diagnoses, :patient, index:true , foreign_key: true 
  end
end
