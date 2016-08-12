class TreatmentsController < ApplicationController
    before_action :authenticate_dentist!
    before_action :set_diagnostic , only: [:create]
    before_action :set_treatment , only: [:edit , :update]
    def index
    end 
    
    def new
        @tratamiento = Treatment.new
    end
    
    def create 
        @tratamiento = current_dentist.treatments.new(treatment_params)
        @tratamiento.diagnostic = @diagnostico 
        @tratamiento.patient  = @diagnostico.patient
        
        if @tratamiento.save 
            redirect_to @tratamiento.diagnostic , notice: "Tratamiento agregado correctamente"
        else
            redirect_to @tratamiento.diagnostic , notice: "Error al agregar el tratamiento"
        end 
    end 
    
    def edit
        
    end 
    
    def update 
        
        if @tratamiento.update(treatment_params)
            redirect_to @tratamiento
        else
            render :edit
        end
    end 
    
    def destroy
        @tratamiento.destroy
        redirect_to diagnostic_path , notice: "Tratamiento eliminado"
    end 
    
    private 
    
    def treatment_params
        params.require(:treatment).permit(:dentist_id,:patient_id,:tratamiento, :fecha , :abono)
    end
    
    def set_diagnostic
        @diagnostico = Diagnostic.find(params[:diagnostic_id])
    end
    
    def set_treatment
        @tratamiento = Treatment.find(params[:id])
    end 
end
