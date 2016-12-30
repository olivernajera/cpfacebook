class SolicitudeMailer < ActionMailer::Base
  default to: 'oliver.najera@grupoinsert.com'
  
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
    
    mail(from: email, subject: 'Solicitud de diseño y publicación') do |format|
      format.html { render 'solicitude_email' }
      format.text { render text: 'solicitude_email' }
  end
end