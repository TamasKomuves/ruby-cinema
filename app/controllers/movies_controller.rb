class MoviesController < ApplicationController

  before_action :require_login

  def admin_index
    @movies = Movie.all
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_admin_index_path
  end

  def edit
    @movie = Movie.find(params[:id])
    @categories = Category.all
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update movie_params

    redirect_to movies_admin_index_path
  end

  def new
    @movie = Movie.new
    @categories = Category.all
  end

  def create
    @movie = Movie.new movie_params
    @movie.save!

    redirect_to movies_admin_index_path
  end

  def movie_params
    params.require(:movie).permit(:title, :length, :description, :category_ids => [])
  end
end
