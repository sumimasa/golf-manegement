class UsersController < ApplicationController
  def show
    user=User.find(params[:id])
    @nickname=user.nickname
    @scores=user.scores.order("play_date DESC")
  end
end
