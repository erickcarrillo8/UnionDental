class PatientsController < ApplicationController
    def index
         @pacientes = Patient.all
    end
    
     #GET /pacientes/:id
    def show
        @pacientes = Patient.find(params[:id])
    end 
    
     #GET /pacientes/:nuevo
    def new 
        @paciente = Patient.new
    end
end
