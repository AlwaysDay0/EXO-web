class Admin::AlbumsController < ApplicationController
  before_action :set_albums, only: [:show, :edit, :update, :destroy, :add_record, :save_record]

  def index
    @albums