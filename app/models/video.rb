class Video < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true
  validates :category, presence: true
end
