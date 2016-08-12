class DentistsController < ApplicationController
    before_action :authenticate_dentist!
    before_action :set_dentist , only: [ :edit, :update, :destroy]
    
    def index
        @dentistas = Dentist.all
    end
    
    def new 
        @dentista = Dentist.new 
    end 
    
    def create 
        
    end 
    
    def edit 
        
    end 
    
    def update
        
    end 
    
    def destroy
        @dentista.destroy
        redirect_to dentists_path , notice: "Dentista eliminado correctamente"
    end 
    
    private 
    
    def set_dentist
        @dentista = Dentist.find(params[:id])
    end 
    
    def dentist_params
        params.require(:dentist).permit(:apellido_mat, :apellido_pat, :rol, :name)
    end 
end
