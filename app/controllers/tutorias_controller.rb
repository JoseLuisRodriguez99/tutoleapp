class TutoriasController < ApplicationController

    before_action :set_tutoria, only: [:show, :update, :destroy]
  
    def index
      @tutorias = Tutorium.all
      json_response(@tutorias)
    end
  
    def create
      usuario_estudiante = Usuario.find(params[:usuario_estudiante])
      usuario_docente = Usuario.find(params[:usuario_docente])
      lugar = Lugar.find(params[:lugar])
      materia = Materium.find(params[:materia])

      to_insert = tutoria_params
      to_insert[:usuario_estudiante] = usuario_estudiante
      to_insert[:usuario_docente] = usuario_docente
      to_insert[:lugar] = lugar
      to_insert[:materia] = materia

      puts to_insert
      @tutoria = Tutorium.create!(to_insert)
      json_response(@tutoria, :created)
    end
  
    def show
      json_response(@tutorias)
    end
  
    def update
      @tutoria.update(tutoria_params)
      head :no_content
    end
  
    def destroy
      @tutoria.destroy
      head :no_content
    end
  
    private
  
    def tutoria_params
      # whitelist params
      params.permit(:usuario_estudiante, :usuario_docente, :nombre, :modalidad, :fecha, :descripcion, :presupuesto, :materia,:lugar)
    end
  
    def set_tutoria
      @tutorias = Tutorium.find(params[:id])
    end
  end
  