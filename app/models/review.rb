class Review < ApplicationRecord
  # Direct associations

  belongs_to :reviewer,
             :class_name => "Profile"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    rating
  end

end
