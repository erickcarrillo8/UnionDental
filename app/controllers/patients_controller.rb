class PatientsController < ApplicationController
    before_action :authenticate_dentist!
    
    def index
         @pacientes = Patient.all
          
    end
    
     #GET /pacientes/:id
    def show
        @pacientes = Patient.find(params[:id])
        @diagnostico = Diagnosis.new
    end 
    
     #GET /pacientes/:nuevo
    def new 
        @paciente = Patient.new
    end
    
    def create 
        @paciente = current_dentist.patients.new(patient_params)
        
        if @paciente.save 
            redirect_to @paciente 
        else
            render :new 
        end 
        
    end
    
    def edit
        @paciente = Patient.find(params[:id])
    end
    
    def update
        @paciente = Patient.find(params[:id])
        if @paciente.update(patient_params)
            redirect_to @paciente
        else
            render :edit
        end
        
    end
    
    
    #DELETE /patients/:id
    def destroy
        @paciente = Patient.find(params[:id])
        @paciente.destroy
        redirect_to patients_path
    end
    
    
    private
    def patient_params
        params.require(:patient).permit(
                                        :nombre,
                                        :apellido_pat,
                                        :apellido_mat, 
                                        :direccion,
                                        :telefono,
                                        :celular,
                                        :RFC,
                                        :fecha_nac,
                                        :religion,
                                        :buen_estado_saludo ,
                                        :alergico_sustancia,
                                        :problemas_anestesia ,
                                        :hemorragia ,
                                        :embarazo ,
                                        :diabates ,
                                        :hipertencion ,
                                        :fiebre_reumatica ,
                                        :asma ,
                                        :enfermades_respiratoras,
                                        :enfermedades_cardiovasculares, 
                                        :dolor_boca ,
                                        :sangrado_encia ,
                                        :mal_olor_boca ,
                                        :dientes_moviles ,
                                        :dolor_abrir_cerrar_boca ,
                                        :malos_habitos ,
                                        :satisfecho ,
                                        :ultima_visita ,
                                        :tratamiento_adquirido ,
                                        :motivo_consulta ,
                                        :autorizacion
                                        )
    end
    
    

end
