class AddDentistIdPatientIdToDiagnostic < ActiveRecord::Migration
  def change
    add_reference :diagnostics, :dentist , index: true , foreign_key: true
    add_reference :diagnostics, :patient , index: true , foreign_key: true
  end
end
