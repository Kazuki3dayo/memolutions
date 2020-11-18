class Category < ApplicationRecord
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '重要メモ' },
   { id: 3, name: 'やることメモ' },
   { id: 4, name: '買い物メモ' }
 ]

  include ActiveHash::Associations
  has_many :memos
end
