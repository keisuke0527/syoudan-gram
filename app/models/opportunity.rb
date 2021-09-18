class Opportunity < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :bottle_neck
    validates :next_action
  end
  with_options numericality: { other_than: 1 } do
    validates :phase_id
    validates :motivation_id
end

