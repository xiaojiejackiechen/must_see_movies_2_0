class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  has_many   :casts,
             :class_name => "Character",
             :dependent => :destroy

  # Indirect associations

  has_many   :reviewers,
             :through => :reviews,
             :source => :reviewer

  has_many   :actors,
             :through => :casts,
             :source => :actor

  # Validations

  # Scopes

  def to_s
    created_at
  end

end
