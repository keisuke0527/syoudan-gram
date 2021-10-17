class Opportunity < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :phase 
  belongs_to :motivation

  with_options presence: true do
    validates :title
    validates :bottle_neck
    validates :next_action
  end
  with_options numericality: { other_than: 1 } do
    validates :phase_id
    validates :motivation_id
  end
end

