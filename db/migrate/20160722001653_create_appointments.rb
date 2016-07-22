class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :fecha

      t.timestamps null: false
    end
  end
end
