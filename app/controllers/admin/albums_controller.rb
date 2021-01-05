class Admin::AlbumsController < ApplicationController
  before_action :set_albums, only: [:show, :edit, :update, :destroy, :add_record, :save_record]

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def edit
  end
  
  def show
  end

  def add_record
  end

  def save_record
    @artist = Artist.find(params[:album][:artist_ids])
    @song = Song.find(params[:album][:song_ids])
    @album.songs << @song
    @album.artists << @artist
    @artist.songs << @song
    redirect_to admin_albums_path, notice: "Song and artist were added to the #{@album.title}"
  end
  
  def creat