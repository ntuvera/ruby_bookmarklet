class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def create
  end

  def bookmarklet
  end
end
