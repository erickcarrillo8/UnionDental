class DropReferencesDiagnoses < ActiveRecord::Migration
  def change
    remove_column :treatments  , :diagnoses_id
   
  end
end
