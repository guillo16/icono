class Post < ApplicationRecord
  paginates_per 6

  validates :title, presence: true
  validate :photo_attach
  has_many_attached :photos

  private

  def photo_attach
    return unless photos.attached? == false

    errors.add(:photos, 'no puede estar vacio')
  end
end
