class AuditoriaController < ApplicationController

  def admin_index
    @auditoria = Auditorium.all
  end

  def destroy
    @auditorium = Auditorium.find params[:id]
    @auditorium.destroy

    redirect_to auditoria_admin_index_path
  end

  def edit
    @auditorium = Auditorium.find params[:id]
  end

  def update
    @auditorium = Auditorium.find params[:id]
    @auditorium.update auditorium_params

    redirect_to auditoria_admin_index_path
  end

  def auditorium_params
    params.require(:auditorium).permit(:name, :capacity)
  end

  def new
    @auditorium = Auditorium.new
  end

  def create
    @auditorium = Auditorium.new auditorium_params
    @auditorium.save!

    redirect_to auditoria_admin_index_path
  end
end
