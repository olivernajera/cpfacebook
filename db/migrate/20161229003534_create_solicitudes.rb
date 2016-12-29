class CreateSolicitudes < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitudes do |t|
      t.text    :oficina_id
      t.text    :tipo_diseño_id
      t.text    :vacante
      t.text    :edad
      t.text    :sexo
      t.text    :escolaridad
      t.text    :sueldo
      t.text    :experiencia
      t.text    :prestaciones
      t.text    :reclutador
      t.text    :email
      t.text    :telefono
      t.text    :actividades
      t.text    :comentarios
      t.timestamps
    end
  end
end
