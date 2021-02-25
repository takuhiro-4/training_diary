require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe '日記が登録' do
    context '日記が登録できるとき' do
      it 'nameとcontentが存在すれば登録できる' do
        expect(@diary).to be_valid
      end
    end
    context '日記が登録できないとき' do
      it 'nameが空では登録できない' do
        @diary.name = ""
        @diary.valid?
        expect(@diary.errors.full_messages).to include "Name can't be blank"
      end
      it 'contentが空では登録できない' do
        @diary.content = ""
        @diary.valid?
        expect(@diary.errors.full_messages).to include "Content can't be blank"
      end
    end
  end
end
