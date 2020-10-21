class Article < ApplicationRecord
  paginates_per 6

  validates :title, presence: true
  validates :subtitle, presence: true
  has_one_attached :photo
  validate :photo_attach

  private

  def photo_attach
    return unless photo.attached? == false

    errors.add(:photo, 'no puede estar vacio')
  end
end
