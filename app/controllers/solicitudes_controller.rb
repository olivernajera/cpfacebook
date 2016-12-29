class SolicitudesController < ApplicationController
  
  def new
    @solicitude = Solicitude.new
  end
  
  def create
    @solicitude = Solicitude.new(solicitude_params)
    if @solicitude.save
      oficina      = params[:solicitude][:oficina_id]
      tipo         = params[:solicitude][:tipo_diseño_id]
      vacante      = params[:solicitude][:vacante]
      edad         = params[:solicitude][:edad]
      sueldo       = params[:solicitude][:sueldo]
      sexo         = params[:solicitude][:sexo]
      escolaridad  = params[:solicitude][:escolaridad]
      experiencia  = params[:solicitude][:experiencia]
      prestaciones = params[:solicitude][:prestaciones]
      reclutador   = params[:solicitude][:reclutador]
      email        = params[:solicitude][:email]
      telefono     = params[:solicitude][:telefono]
      actividades  = params[:solicitude][:actividades]
      comentarios  = params[:solicitude][:comentarios]
      SolicitudMailer.solicitud_email(oficina, tipo, vacante, edad, sueldo, sexo, escolaridad, experiencia, prestaciones, reclutador, email, telefono, actividades, comentarios).deliver
      redirect_to new_solicitude_path, notice: "Solicitud enviada."
    else
      redirect_to new_solicitude_path, notice: "Error de envío."
    end
  end
  
  private
    def solicitude_params
      params.require(:solicitude).permit(:oficina_id, :tipo_diseño_id, :vacante, :edad, :sexo, :escolaridad, :sueldo, :experiencia, :prestaciones, :reclutador, :email, :telefono, :actividades, :comentarios)
    end
end