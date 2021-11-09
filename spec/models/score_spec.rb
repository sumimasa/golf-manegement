require 'rails_helper'

RSpec.describe Score, type: :model do
  before do
    @score=FactoryBot.create(:score)
  end

  describe 'スコアを登録' do
    context 'スコアを登録できるとき' do
      it '記入が正しく行われたとき' do
        expect(@score).to be_valid
      end

      it '登録時total_scoreが空でも登録できる' do
        @score.total_score=""
        expect(@score).to be_valid
      end

      it 'memoが空でも登録できる' do
        @score.memo=""
        expect(@score).to be_valid
      end
    end

    context 'スコアを登録できないとき' do
      it 'course_nameが空' do
        @score.course_name=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Course name can't be blank")
      end

      it 'play_dateが空のとき' do
        @score.play_date=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Play date can't be blank")
      end

      it 'score_1hが空のとき' do
        @score.score_1h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 1h can't be blank")
      end

      it 'score_2hが空のとき' do
        @score.score_2h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 2h can't be blank")
      end

      it 'score_3hが空のとき' do
        @score.score_3h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 3h can't be blank")
      end

      it 'score_4hが空のとき' do
        @score.score_4h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 4h can't be blank")
      end

      it 'score_5hが空のとき' do
        @score.score_5h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 5h can't be blank")
      end

      it 'score_6hが空のとき' do
        @score.score_6h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 6h can't be blank")
      end

      it 'score_7hが空のとき' do
        @score.score_7h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 7h can't be blank")
      end

      it 'score_8hが空のとき' do
        @score.score_8h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 8h can't be blank")
      end

      it 'score_9hが空のとき' do
        @score.score_9h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 9h can't be blank")
      end

      it 'score_10hが空のとき' do
        @score.score_10h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 10h can't be blank")
      end

      it 'score_11hが空のとき' do
        @score.score_11h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 11h can't be blank")
      end

      it 'score_12hが空のとき' do
        @score.score_12h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 12h can't be blank")
      end

      it 'score_13hが空のとき' do
        @score.score_13h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 13h can't be blank")
      end

      it 'score_14hが空のとき' do
        @score.score_14h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 14h can't be blank")
      end

      it 'score_15hが空のとき' do
        @score.score_15h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 15h can't be blank")
      end

      it 'score_16hが空のとき' do
        @score.score_16h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 16h can't be blank")
      end

      it 'score_17hが空のとき' do
        @score.score_17h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 17h can't be blank")
      end

      it 'score_18hが空のとき' do
        @score.score_18h=""
        @score.valid?
        expect(@score.errors.full_messages).to include("Score 18h can't be blank")
      end

      it 'userが紐づいていないと登録できない' do
        @score.user=nil
        @score.valid?
        expect(@score.errors.full_messages).to include("User must exist")
      end
    end
  end
end
