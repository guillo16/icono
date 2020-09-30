class Program < ApplicationRecord
  paginates_per 6

  validates :title, presence: true
  has_many_attached :photos
end
