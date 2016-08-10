class TreatmentsController < ApplicationController
    before_action :authenticate_dentist!
    #before_action :set_patient
    #before_action :set_diagnosis
    before_action :set_treatment , only: [:show, :edit, :update, :destroy]
    
    
    def index
        @tratamiento = Treatment.find_by_diagnoses_id(params[:diagnoses_id])
        
        
    end 
    
    def show 
       
    end 
    
    def new 
        @tratamiento = Treatment.new 
    end 
    
    def create 
    end
    
    private 
    
    def set_patient
        @paciente = Patient.find(params[:patient_id])
    end 
    
    def set_diagnosis
        @diagnostico = Diagnosis.find(params[:diagnoses_id])
    end 
    
    def set_treatment
        @tratamiento = Treatment.find(params[:id])
    end
    
    def treatment_params
        params.require(:treatment).permit(:dentist_id, :patient_id, :diagnoses_id, :tratamiento , :abono , :fecha)
    end 

end
