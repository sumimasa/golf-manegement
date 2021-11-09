class UsersController < ApplicationController
  before_action :move_index
  def show
    user=User.find(params[:id])
    @nickname=user.nickname
    @scores=user.scores.order("play_date DESC")
    @pie_chart={'2014-04-01' => 20, '2014-04-02' => 50, '2014-04-03' => 30}
  end

  private
    def move_index
      user=User.find(params[:id])
      if current_user.id != user.id
        redirect_to root_path
      end
    end
end
