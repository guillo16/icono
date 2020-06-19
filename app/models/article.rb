class Article < ApplicationRecord
  has_one_attached :photo
  paginates_per 6
end
