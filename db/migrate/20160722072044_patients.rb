class Patients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :nombre 
      t.string :apellido_pat
      t.string :apellido_mat
      t.text :direccion
      t.integer :telefono
      t.integer :celular
      t.string :RFC
      t.date :fecha_nac
      t.string :religion
      t.boolean :buen_estado_saludo 
      t.boolean :alergico_sustancia 
      t.boolean :problemas_anestesia 
      t.boolean :hemorragia 
      t.boolean :embarazo 
      t.boolean :diabates 
      t.boolean :hipertencion 
      t.boolean :fiebre_reumatica 
      t.boolean :asma 
      t.boolean :enfermades_respiratoras
      t.boolean :enfermedades_cardiovasculares 
      t.boolean :dolor_boca 
      t.boolean :sangrado_encia 
      t.boolean :mal_olor_boca 
      t.boolean :dientes_moviles 
      t.boolean :dolor_abrir_cerrar_boca 
      t.boolean :malos_habitos 
      t.boolean :satisfecho 
      t.date :ultima_visita 
      t.boolean :tratamiento_adquirido 
      t.boolean :motivo_consulta 
      t.boolean :autorizacion 

      t.timestamps null: false
    end
  end
end
