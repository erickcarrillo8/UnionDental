class AddDentistIdPatientIdToAppointment < ActiveRecord::Migration
  def change
    add_reference :appointments , :dentist, index: true , foreign_key: true
    add_reference :appointments, :patient , index: true , foreign_key: true
  end
end
