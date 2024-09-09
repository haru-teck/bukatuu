class Announcement < ApplicationRecord
  validates :title, presence: true
  validates :explanation, presence: true
 


  has_many_attached :images
end
