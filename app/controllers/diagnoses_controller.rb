class DiagnosesController < ApplicationController
    before_action :authenticate_dentist!
    
    def show
    end
    
    def new
        @diagnostico = Diagnosis.new
    end
    
    def create 
        @diagnostico = current_dentist.diagnoses.new(diagnosis_params)
        @diagnostico.patient  = @paciente 
        
       
        if @diagnostico.save
            redirect_to @comment.article, notice: 'Diagnostico agregado correctamente'
        else
           
        end
        
    end
    
    private 
    
    def set_patient 
        @paciente = Patient.find(params[:patient_id])
    end
    
    def set_diagnosis 
        @diagnostico = Diagnosis.find(params[:id])
    end
    
    def diagnosis_params
        params.require(:diagnosis).permit(:dentist_id,:patient_id,:nopieza,:costo,:fecha,:diagnostico)
    end
end
