class MateriaController < ApplicationController
  before_action :set_materia, only: [:show, :update, :destroy]

  def index
    area = Area.find(params[:area_id])
    # @materias = Materium.all
    json_response(area.materia)
  end

  def create
    puts materia_params
    @materia = Materium.create!(materia_params)
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
    params.permit(:nombre, :area_id )
  end

  def set_materia
    @materia = Materium.find(params[:id])
  end
end
