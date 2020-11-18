class Store < ApplicationRecord
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: 'スーパーマーケット' },
   { id: 3, name: 'ショッピングモール' },
   { id: 4, name: 'コンビニ' },
   { id: 5, name: '薬局' },
   { id: 6, name: '書店' },
   { id: 7, name: '100円均一' },
   { id: 8, name: '家電量販店' },
   { id: 9, name: 'ベビー・キッズ用品店' },
   { id: 10, name: 'スポーツショップ' },
   { id: 11, name: 'ホビーショップ' },
   { id: 12, name: 'その他' }
 ]

  include ActiveHash::Associations
  has_many :memos
end
