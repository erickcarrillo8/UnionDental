class Diagnosis < ActiveRecord::Base
    belongs_to :dentist
    belongs_to :patient
    validates :nopieza , presence: true
    validates :costo , presence: true
    validates :fecha , presence: true
    
end
