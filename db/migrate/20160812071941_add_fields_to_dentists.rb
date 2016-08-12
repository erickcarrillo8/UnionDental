class AddFieldsToDentists < ActiveRecord::Migration
  def change
    add_column :dentists , :apellido_pat , :string 
    add_column :dentists , :apellido_mat , :string 
    add_column :dentists , :rol , :integer 
  end
end
