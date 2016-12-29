class SolicitudesController < ApplicationController
  
  def new
    @solicitude = Solicitude.new
  end
  
  def create
    @solicitude = Solicitude.new(solicitude_params)  
    if @solicitude.save
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