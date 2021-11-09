require 'rails_helper'

RSpec.describe User, type: :model do
  before do 
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録'do
    context '新規登録できる時' do
      it "記入が正しく行われた時" do
        expect(@user).to be_valid
      end
    end

    context '新規登録できない時' do 
      it 'ニックネームが空のとき' do
        @user.nickname=""
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end

      it 'emailが空のとき' do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it 'passwordが空のとき' do
        @user.password=""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it 'password_confirmationが空のとき' do
        @user.password_confirmation=""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it 'passwordとpassword_confirmationが一致していないとき' do
        @user.password_confirmation="jlfksajfkj"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
    end
  end
end
