class Patient < ActiveRecord::Base
    
    validates :nombre , presence: true , length: { minimum: 30}
    validates :apellido_mat , presence: true , length: { minimum: 30}
    validates :direccion , presence: true , length: { minimum: 50}
    validates :telefono, presence: true, length: {minimum:7}
    validates :celular, presence: true, length: {minimum:7}
    validates :RFC , presence: true, length: {minimum: 10  }
    validates :fecha_nac , presence: true
    
   
end


                                      