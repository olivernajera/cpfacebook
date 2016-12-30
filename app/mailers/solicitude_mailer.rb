class SolicitudeMailer < ApplicationMailer
  
  def solicitude_email(oficina, tipo, vacante, edad, sueldo, sexo, escolaridad, experiencia, prestaciones, reclutador, email, telefono, actividades, comentarios)
    @oficina      = oficina
    @tipo         = tipo
    @vacante      = vacante
    @edad         = edad
    @sueldo       = sueldo
    @sexo         = sexo
    @escolaridad  = escolaridad
    @experiencia  = experiencia
    @prestaciones = prestaciones
    @reclutador   = reclutador
    @email        = email
    @telefono     = telefono
    @actividades  = actividades
    @comentarios  = comentarios
    
    mail(to: 'oliver.najera@grupoinsert.com') do |format|
      format.html { render layout: 'solicitude_mailer' }
      format.text
    end
  end
end