class CreateSolicitudes < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitudes do |t|
      t.text    :oficina
      t.text    :tipo_diseño
      t.string  :edad
      t.string  :sexo
      t.text    :escolaridad
      t.text  :sueldo
      t.text    :experiencia
      t.text    :prestaciones
      t.text    :reclutador
      t.text    :email
      t.string  :telefono
      t.text    :actividades
      t.text    :comentarios
      t.timestamps
    end
  end
end
