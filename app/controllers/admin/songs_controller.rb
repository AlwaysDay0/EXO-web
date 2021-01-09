class Admin::SongsController < ApplicationController
  before_action :set_songs, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def edit
  end
  
  def show
  end

  
  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to admin_song_path(@song), notice: 'song was successfully created.'
    else
      render :new
    end
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      redirect_to admin_song_path(@song), notice: 'song was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirec