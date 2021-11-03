class Comment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions 

  belongs_to :user
  belongs_to :opportunity
  belongs_to :kind

  validates :text, :kind, presence: true
  validates :kind_id , numericality: { other_than: 1 }
end
