class ScreeningsController < ApplicationController
  before_action :require_login

  def index
    @screenings = Screening.all
  end

  def show
    @screening = Screening.find(params[:id])
  end

  def admin_index
    @screenings = Screening.all
  end

  def destroy
    @screening = Screening.find(params[:id])
    @screening.destroy

    redirect_to screenings_admin_index_path
  end

  def edit
    @screening = Screening.find(params[:id])
    @movies = Movie.all
    @auditoria = Auditorium.all
  end

  def update
    @screening = Screening.find(params[:id])
    @screening.update screening_params

    redirect_to screenings_admin_index_path
  end

  def new
    @screening = Screening.new
    @movies = Movie.all
    @auditoria = Auditorium.all
  end

  def create
    @screening = Screening.new screening_params
    @screening.save!

    redirect_to screenings_admin_index_path
  end

  def screening_params
    params.require(:screening).permit(:date, :movie_id, :price, :auditorium_id)
  end
end
