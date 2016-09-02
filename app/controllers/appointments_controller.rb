class AppointmentsController < ApplicationController
    before_action :authenticate_dentist!
    
    def index
        @citas = Appointment.all 
        @cita = Appointment.new
    end 
    
    def new
       
       
    end 
    
    
    def create
        
    end 
    
    
    private 
    
    def set_patient
        @paciente = Patient.find(params[:patient_id])
          
    end 
end
