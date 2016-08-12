class Treatment < ActiveRecord::Base
    belongs_to :dentist
    belongs_to :patient
    belongs_to :diagnostic
    
    validates :tratamiento , presence: true
    validates :fecha , presence: true 
    validates :abono , presence: true 
end
