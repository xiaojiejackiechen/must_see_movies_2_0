class Director < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :movies,
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    director_name
  end
end
