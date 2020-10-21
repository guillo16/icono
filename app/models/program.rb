class Program < ApplicationRecord
  paginates_per 6

  validates :title, presence: true
  has_many_attached :photos
  validate :photo_attach

  private

  def photo_attach
    return unless photos.attached? == false

    errors.add(:photos, 'no puede estar vacio')
  end
end
