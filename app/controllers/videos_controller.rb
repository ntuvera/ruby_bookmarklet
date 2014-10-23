class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def new
  end

  def create
    binding.pry
    # @video = Video.create({title: params[:title], url: params[:url]})
    @video = Video.create({title: video_params[:title], url: video_params[:url]})
    @title = params[:title]
    @url = params[:url]
    redirect_to root_path
  end

  def show
    @url = params[:url]
    @title = params[:title]
  end
  private

  def video_params
    params.require(:video).permit(:title, :url)
  end
end
