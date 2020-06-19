class Article < ApplicationRecord
  paginates_per 6
  validates :title, presence: true
  validates :subtitle, presence: true
  has_one_attached :photo
  validate :photo_attach

  private

  def photo_attach
    if photo.attached? == false
      errors.add(:photo, 'Tienes que elegir una foto')
    end
  end
end
