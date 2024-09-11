class Event < ApplicationRecord
  belongs_to :calendar
  has_one_attached :image

  validates :location, presence: true
  validates :attendance_status, presence: true
end
