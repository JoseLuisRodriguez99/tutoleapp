class DocumentosController < ApplicationController
    before_action :set_documento, only: [:show, :update, :destroy]
  
    def index
      @documentos = Documento.all
      json_response(@documentos)
    end
  
    def create
      puts documento_params
      @documento = Documento.create!(documento_params)
      json_response(@documento, :created)
    end
  
    def show
      json_response(@documento)
    end
  
    def update
      @documento.update(documento_params)
      head :no_content
    end
  
    def destroy
      @documento.destroy
      head :no_content
    end
  
    private
  
    def documento_params
      # whitelist params
      params.permit(:tipo, :archivo, :estado )
    end
  
    def set_documento
      @documentos = Documento.find(params[:id])
    end
  end
  