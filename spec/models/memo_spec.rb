require 'rails_helper'

RSpec.describe Memo, type: :model do
  describe '#create' do
    before do
      @memo = FactoryBot.build(:memo)
    end

    it '全ての情報が登録されていれば保存できること' do
      expect(@memo).to be_valid
    end

    #title

    it 'titleが空ではメモの保存ができないこと' do
      @memo.title = nil
      @memo.valid?
      expect(@memo.errors.full_messages).to include("Title can't be blank")
    end

    #text & image
    it 'textが空でもimageがあれば保存できること' do
      @memo.text = nil
      expect(@memo).to be_valid
    end
    it 'imageが空でもtextがあれば保存できること' do
      @memo.image = nil
      expect(@memo).to be_valid
    end
    it 'textとimage両方空では登録できないこと' do
      @memo.text = nil
      @memo.image = nil
      @memo.valid?
      expect(@memo.errors.full_messages).to include("Text  or image can't be blank")
    end

    #amount
    it 'amountが空では保存できないこと'  do
      @memo.amount = nil
      @memo.valid?
      expect(@memo.errors.full_messages).to include("Amount は¥0〜¥999,999の範囲内で入力してください")
    end
    it 'amountは全角数字では保存できないこと' do
      @memo.amount = '５００００'
      @memo.valid?
      expect(@memo.errors.full_messages).to include("Amount is invalid. Input half-width characters.")
    end

    #category_id
    it 'category_idが選択されていないと保存できないこと' do
      @memo.category_id = 1
      @memo.valid?
      expect(@memo.errors.full_messages).to include("Category を選択してください")
    end

    #when_id
    it 'when_idが選択されていないと保存できないこと' do
      @memo.when_id = 1
      @memo.valid?
      expect(@memo.errors.full_messages).to include("When を選択してください")
    end

  end
end
