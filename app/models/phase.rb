class Phase < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '案内前' },
    { id: 3, name: '案内後' },
    { id: 4, name: '前向き検討' },
    { id: 5, name: '保留中' },
    { id: 6, name: '要追客' },
    { id: 7, name: 'ほぼ決まる' },
  ]

  include ActiveHash::Associations
  has_many :Opportunities

end
