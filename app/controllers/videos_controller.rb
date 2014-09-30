class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def create
    @video = Video.new(video_params[:video])

    respond_to do |f|
      if @video.save
        f.html { redirect_to @video }
        f.json { render json: @video, status: :created, location: @video }
      else
        f.html { render action: 'new' }
        f.json { render jsoon: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def video_params
    params.require(:video).permit(:title, :url)
  end
end
