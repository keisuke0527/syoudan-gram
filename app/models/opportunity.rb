class Opportunity < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :phase 
  belongs_to :kind
  belongs_to :motivation
  has_one_attached :image
  has_many :comments

  with_options presence: true do
    validates :title
    validates :bottle_neck, length: { maximum: 150 }
    validates :next_action,length: { maximum: 150 }
  end
  with_options numericality: { other_than: 1 } do
    validates :phase_id
    validates :motivation_id
  end
end

