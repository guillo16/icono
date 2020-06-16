class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  def index
    @videos = Video.all
  end

  def show
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to video_path(@video)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @video.update(video_params)
    redirect_to video_path(@video)
  end

  def destroy
    @video.destroy
    redirect_to videos_path
  end

  private

  def set_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:title, :category, :url)
  end
end
