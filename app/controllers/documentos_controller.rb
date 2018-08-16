class DocumentosController < ApplicationController
    before_action :set_materia, only: [:show, :update, :destroy]
  
    def index
      @documentos = Documento.all
      json_response(@documentos)
    end
  
    def create
      puts documento_params
      @documento = Documento.create!(materia_params)
      json_response(@documento, :created)
    end
  
    def show
      json_response(@documento)
    end
  
    def update
      @documento.update(materia_params)
      head :no_content
    end
  
    def destroy
      @documento.destroy
      head :no_content
    end
  
    private
  
    def documento_params
      # whitelist params
      params.permit(:usuario_id, tipo, archivo, estado )
    end
  
    def set_documento
      @documentos = Documento.find(params[:id])
    end
  end
  