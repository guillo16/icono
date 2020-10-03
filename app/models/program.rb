class Program < ApplicationRecord
  paginates_per 6

  validates :title, presence: true
  has_many_attached :photos

  private

  def photo_attach
    return unless photos.attached? == false

    errors.add(:photos, 'Tienes que elegir una foto')
  end
end
