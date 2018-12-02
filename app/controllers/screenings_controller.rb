class ScreeningsController < ApplicationController
  before_action :require_login

  def index
    @screenings = Screening.all
  end

  def show
    @screening = Screening.find(params[:id])
  end
end
