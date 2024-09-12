class Diary < ApplicationRecord
  validates :goal, presence: true
  validates :content_id, presence: true
  validates :review, presence: true
  validates :goal_completion, presence: true
end