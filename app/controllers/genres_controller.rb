class GenresController < ApplicationController 

  def index 
      @genres = Genre.all 
  end
  
  def new
      @genre = Genre.new
  end

  def create 
      @genre = Genre.new(params.require(:genre).permit(:name, :bio))
      @genre.save
      redirect_to genre_path(@genre)
  end

  def show 
      @genre = Genre.find(params[:id])
  end

  def edit 
      @genre = Genre.find(params[:id])
  end

  def update
      @genre = Genre.update(params.require(:genre).permit(:name, :bio))
      redirect_to genre_path(@genre)
  end
end