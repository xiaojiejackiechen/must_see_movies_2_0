class Movie < ApplicationRecord
  # Direct associations

  has_many   :casts,
             :class_name => "Character",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    created_at
  end

end
