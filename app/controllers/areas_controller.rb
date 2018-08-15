class AreasController < ApplicationController
    before_action :set_area, only: [:show, :update, :destroy]

    def index
      @areas = Area.all
      json_response(@areas)
    end
  
    def create
      @area = Area.create!(area_params)
      json_response(@area, :created)
    end
  
    def show
      json_response(@area)
    end
  
    def update
      @area.update(area_params)
      head :no_content
    end
  
    def destroy
      @area.destroy
      head :no_content
    end
  
    private
  
    def area_params
      # whitelist params
      params.permit(:nombre)
    end
  
    def set_area
      @area = Area.find(params[:id])
    end
end
