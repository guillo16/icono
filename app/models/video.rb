class Video < ApplicationRecord
  validates :title, precense: true
  validates :url, precense: true
  validates :category, precense: true
end
