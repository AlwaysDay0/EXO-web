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

  def save_reco