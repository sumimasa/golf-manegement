require 'rails_helper'

RSpec.describe Video, type: :model do
  before do
    @video=FactoryBot.create(:video)
  end

  describe '練習動画機能' do
    context '動画を登録できるとき' do
      it '記入が正しく行われたとき' do
        expect(@video).to be_valid
      end
    end

    context '動画を登録できないとき' do
      it 'titleが空のとき' do
        @video.title=""
        @video.valid?
        expect(@video.errors.full_messages).to include("Title can't be blank")
      end

      it 'youtube_urlが空のとき' do
        @video.youtube_url=""
        @video.valid?
        expect(@video.errors.full_messages).to include("Youtube url can't be blank")
      end

      it 'userが紐づいていないとき' do
        @video.user=nil
        @video.valid?
        expect(@video.errors.full_messages).to include("User must exist")
      end
    end
  end
end
