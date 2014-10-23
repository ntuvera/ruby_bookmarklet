class BookmarkletsController < ApplicationController
  protect_from_forgery except: :create
  def create
    video = Video.new(video_params)
    if Video.find_by_title(video.title)
      existing_video = Video.find_by_title(video.title)
      if existing_video
        @response = { result: "Video exists" }
        # render :json => @response
    else
      # considering adding attr_accessor under Video.rb to allow cleaner creation ie Video.new(video.video_id, video.title...)
      @video.title = video.title
      @video.url = video.url
      @video.save
        if @video.save
          @response = { result: "New Video Saved" }
        else
          @response = { result: "Error" }
        end
    end
  end

  def video_params
    params.require(:video).permit(:title, :url)
  end

end
