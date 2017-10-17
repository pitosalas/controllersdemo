class AlbumsController < ApplicationController

  def index
    log params.inspect
    @albums = Album.all
  end

  def show
    log params.inspect
    @album = Album.find(params[:id])
  end

  def new
    log params.inspect
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def album_params
    params.require(:album).permit(:title)
  end


end
