class MateriasController < ApplicationController
    before_action :set_materia, only: [:show, :update, :destroy]

    def index
      @materias = Materia.all
      json_response(@materias)
    end
  
    def create
      @materia = Materia.create!(materia_params)
      json_response(@materia, :created)
    end
  
    def show
      json_response(@materia)
    end
  
    def update
      @materia.update(materia_params)
      head :no_content
    end
  
    def destroy
      @materia.destroy
      head :no_content
    end
  
    private
  
    def materia_params
      # whitelist params
      params.permit(:nombre )
    end
  
    def set_materia
      @materia = Materia.find(params[:id])
    end
end
