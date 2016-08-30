class AddFieldsToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments , :fecha_inicio , :datetime
    add_column :appointments , :fecha_final , :datetime
    remove_column :appointments , :fecha 
  end
end
