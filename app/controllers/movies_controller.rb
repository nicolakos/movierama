class MoviesController < ApplicationController
  def new
    @page_title = 'Movierama'
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user_id = current_user_id
    # binding.pry
    if @movie.save
      flash[:notice] = 'movie Created'
      redirect_to movies_path
    else
      render 'new'
    end
  end

  def index
    @movies = Movie.all
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      flash[:notice] = 'movie Updated'
      redirect_to movies_path
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    if @movie.update(movie_params)
      flash[:notice] = 'movie Deleted'
      redirect_to movies_path
    else
      render 'new'
    end
  end

  def show
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description)
  end

end
