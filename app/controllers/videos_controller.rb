class VideosController < ApplicationController
  before_action :move_index,only: :show
  def show
    user=User.find(params[:id])
    @videos=user.videos
  end

  def new
    @video=Video.new
  end

  def create
    @video=Video.create(video_params)
    if @video.valid?
      redirect_to video_path(current_user.id)  
    else 
      @error="エラー：入力内容を確認してください"
      render :new
    end

  end

  def destroy
    video=Video.find(params[:id])
    video.destroy
    redirect_to  video_path(current_user.id)
  end


  private
    def video_params
      params.require(:video).permit(:title,:youtube_url).merge(user_id:current_user.id)
    end
    
    def move_index
      user=User.find(params[:id])
      if current_user.id != user.id
        redirect_to root_path
      end
    end
end
