class Program < ApplicationRecord
  paginates_per 6

  validates :title, presence: true
  validate :photo_attach
  has_one_attached :photo

  private

  def photo_attach
    return unless photo.attached? == false

    errors.add(:photo, 'Tienes que elegir una foto')
  end
end
