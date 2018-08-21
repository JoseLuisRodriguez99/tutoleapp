class CalificacionesController < ApplicationController 
    before_action :set_calificacion, only: [:show, :update, :destroy]
  
    def index
      @calificaciones = Calificacion.all
      json_response(@calificaciones)
    end
  
    def create
      usuario_estudiante = Usuario.find(params[:usuario_estudiante])
      usuario_docente = Usuario.find(params[:usuario_docente])

      to_insert = calificacion_params
      to_insert[:usuario_estudiante] = usuario_estudiante
      to_insert[:usuario_docente] = usuario_docente

      puts to_insert
      @calificacion = Calificacion.create!(to_insert)
      json_response(@calificacion, :created)
    end
  
    def show
      json_response(@calificaciones)
    end
  
    def update
      @calificacion.update(calificacion_params)
      head :no_content
    end
  
    def destroy
      @calificacion.destroy
      head :no_content
    end
  
    private
  
    def calificacion_params
      # whitelist params
      params.permit(:usuario_estudiante, :usuario_docente, :valor, :descripcion)
    end
  
    def set_calificacion
      @calificaciones = Calificacion.find(params[:id])
    end
  end
  
