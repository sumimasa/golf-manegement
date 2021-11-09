class ScoresController < ApplicationController
  before_action :find_params,only:[:show,:edit,:update]
  before_action :move_index,only:[:show,:edit,:update]
  

  def new
    @score = Score.new
  end

  def create
    @score = Score.new(score_params)
    if @score.valid?
      @score.total_score = insert_total_score(@score)
      @score.save
    else
      @error = 'エラー：入力内容を確認してください'
      render :new
    end
  end

  def show
    
  end

  def edit

  end

  def update
    
    @score.total_score=insert_total_score(@score)
    if @score.update(score_params)  
      redirect_to user_path(current_user.id)   
    else 
      @error="エラー：入力に誤りがあります"
      render :edit
    end
  end


  private

  def score_params
    params.require(:score).permit(:score_1h, :score_2h, :score_3h, :score_4h, :score_5h, :score_6h, :score_7h, :score_8h, :score_9h,
                                  :score_10h, :score_11h, :score_12h, :score_13h, :score_14h, :score_15h, :score_16h, :score_17h, :score_18h, :course_name, :play_date,:memo).merge(user_id: current_user.id)
  end

  def insert_total_score(score)
    score.score_1h + score.score_2h + score.score_3h + score.score_4h + score.score_5h + score.score_6h + score.score_7h + score.score_8h + score.score_9h + score.score_10h + score.score_11h + score.score_12h + score.score_13h + score.score_14h + score.score_15h + score.score_16h + score.score_17h + score.score_18h
  end

  def find_params
    @score = Score.find(params[:id])
  end

  def move_index
    if current_user.id != @score.user_id
      redirect_to root_path
    end
  end
end
