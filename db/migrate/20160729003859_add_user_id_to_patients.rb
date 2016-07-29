class AddUserIdToPatients < ActiveRecord::Migration
  def change
    add_reference :patients, :dentist, index:true , foreign_key: true 
  end
end
