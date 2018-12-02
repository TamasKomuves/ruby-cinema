class ScreeningsController < ApplicationController
  def index
    @screenings = Screening.all
  end

  def show
    @screening = Screening.find(params[:id])
  end
end
