class Kind < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アドバイス' },
    { id: 3, name: '応援コメント' },
    { id: 4, name: 'フィードバック' },
  ]

  include ActiveHash::Associations
  has_many :comments
  has_many :opportunities
end