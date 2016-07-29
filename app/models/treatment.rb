class Treatment < ActiveRecord::Base
    belongs_to :dentist
    belongs_to :patient
    belongs_to :diagnoses
end
