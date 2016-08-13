class DiagnosticsController < ApplicationController
    before_action :authenticate_dentist!
    before_action :set_patient , only: [:create]
    before_action :set_diagnostic , only: [:show, :edit, :update, :destroy]
    
    
    def index 
        @diagnostico = Diagnostic.all 
       
    end 
    def show
        @diagnosticos = Diagnostic.find(params[:id])
        @tratamiento = Treatment.new 
        
    end
    
    def new
        @diagnostico = Diagnostics.new
    end
    
    def create 
       
        @diagnostico = current_dentist.diagnostics.new(diagnostic_params)
        @diagnostico.patient  = @paciente 
       
        if @diagnostico.save
            redirect_to  @diagnostico.patient , notice: 'Diagnostico agregado correctamente'
        else
           redirect_to @diagnostico.patient , notice: 'Error al agregar el diagnostico'
        end
        
    end
    
    private 
    
    def set_patient 
        @paciente = Patient.find(params[:patient_id])
    end
    
    def set_diagnostic 
        @diagnostico = Diagnostic.find(params[:id])
    end
    
    def diagnostic_params
        params.require(:diagnostic).permit(:dentist_id,:patient_id,:nopieza,:costo,:fecha,:diagnostico)
    end
end
