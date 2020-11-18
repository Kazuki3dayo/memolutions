class Memo < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :store
  belongs_to :genre
  belongs_to :when

  validates :title, :text, presence: true
  validates :amount, format: { with: /\A[0-9]+\z/, message: 'には半角数字を使用してください' }
  validates :amount, numericality: { only_integer: true, message: 'is invalid. Input half-width characters.' }
  validates :amount, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 999_999, message: 'は¥0〜¥999,999の範囲内で入力してください' }

  validates :category_id, :when_id, numericality: { other_than: 1, message: 'の詳細情報を選択してください' }
end
