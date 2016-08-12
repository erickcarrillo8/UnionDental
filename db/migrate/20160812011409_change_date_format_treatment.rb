class ChangeDateFormatTreatment < ActiveRecord::Migration
  def change
    change_column :treatments , :fecha , :date 
  end
end
