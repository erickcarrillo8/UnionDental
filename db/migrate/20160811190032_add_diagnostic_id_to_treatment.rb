class AddDiagnosticIdToTreatment < ActiveRecord::Migration
  def change
    add_reference :treatments, :diagnostic , index: true , foreign_key: true
  end
end
