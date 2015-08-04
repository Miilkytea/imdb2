class MoviesController < ApplicationController

  def index 
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.find(params[:id])
    if @movie.save(movie_params)
      redirect_to root_path

    else
      render 'new'
    end
  end
   
  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to root_path

    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id]).destroy
    if @movie.destroy
      redirect_to root_path, notice: "You have deleted a movie!"

    else
      flash.now.alert = "Error deleting movie"
      redirect_to root_path
    end
  end

end  

  private

    def movie_params
      params.require(:movie).permit(:title, :summary, :youtube_embed_id, :thumbnail)
    end
      


