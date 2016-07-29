class Patient < ActiveRecord::Base
    belongs_to :dentist     
    validates :nombre , presence: true 
    validates :apellido_pat , presence: true 
    validates :apellido_mat , presence: true 
    validates :direccion , presence: true , length: { minimum: 10}
    validates :telefono, presence: true, length: {minimum:7}
    validates :celular, presence: true, length: {minimum:7}
    validates :RFC , presence: true, length: {minimum: 10  }
    validates :fecha_nac , presence: true
    
   
end


                                      