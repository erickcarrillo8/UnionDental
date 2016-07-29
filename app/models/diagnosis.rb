class Diagnosis < ActiveRecord::Base
    belongs_to :dentist
    belongs_to :patient
end
