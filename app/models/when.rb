class When < ActiveHash::Base
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '今日' },
   { id: 3, name: '明日' },
   { id: 4, name: '明後日' },
   { id: 5, name: '明々後日' },
   { id: 6, name: '週末(土曜)' },
   { id: 7, name: '週末(日曜)' },
   { id: 8, name: '翌週以降' }
 ]

  include ActiveHash::Associations
  has_many :memos
end
