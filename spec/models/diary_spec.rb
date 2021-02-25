require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe '日記新規登録' do
    context '新規登録できるとき' do
      it 'タイトル・内容が存在すれば登録できる' do
        expect(@diary).to be_valid
      end
    end

    context '新規登録ができないとき' do
      it 'タイトルが空では登録できない' do
        @diary.name = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include "Name can't be blank"
      end
      it '内容が空では登録できない' do
        @diary.content = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include "Content can't be blank"
      end
    end
  end
end
