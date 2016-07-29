class ChangeFieldsPatients < ActiveRecord::Migration

  def up 
      change_column :patients , :tratamiento_adquirido, :string
      change_column :patients , :motivo_consulta , :string
  end 
  def down 
      change_column :patients , :tratamiento_adquirido, :boolean
      change_column :patients , :motivo_consulta , :boolean
  end 
end
