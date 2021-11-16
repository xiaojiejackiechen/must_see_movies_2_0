class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :movie

  belongs_to :user,
             class_name: "Profile"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    user.to_s
  end
end
