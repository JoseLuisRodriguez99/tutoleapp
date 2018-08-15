class LugarsController < ApplicationController
    before_action :set_lugar, only: [:show, :update, :destroy]

    def index
      @lugars = Lugar.all
      json_response(@lugars)
    end
  
    def create
      @lugar = Lugar.create!(lugar_params)
      json_response(@lugar, :created)
    end
  
    def show
      json_response(@lugar)
    end
  
    def update
      @lugar.update(lugar_params)
      head :no_content
    end
  
    def destroy
      @lugar.destroy
      head :no_content
    end
  
    private
  
    def lugar_params
      # whitelist params
      params.permit(:nombre, :direccion)
    end
  
    def set_lugar
      @lugar = Lugar.find(params[:id])
    end
end
