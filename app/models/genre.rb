class Genre < ApplicationRecord
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '食材' },
   { id: 3, name: '飲料' },
   { id: 4, name: '衣料品' },
   { id: 5, name: '生活消耗品' },
   { id: 6, name: '住宅掃除用品' },
   { id: 7, name: 'お風呂掃除用品' },
   { id: 8, name: 'トイレ掃除用品' },
   { id: 9, name: '医薬品' },
   { id: 10, name: '文房具' },
   { id: 11, name: '便利グッズ' },
   { id: 12, name: '電化製品' },
   { id: 13, name: 'おもちゃ' },
   { id: 14, name: 'その他' }
 ]

  include ActiveHash::Associations
  has_many :memos
end
