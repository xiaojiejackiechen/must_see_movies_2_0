class ProfileResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :username, :string

  # Direct associations

  has_many   :bookmarks,
             foreign_key: :user_id

  has_many   :reviews,
             foreign_key: :reviewer_id

  # Indirect associations

  many_to_many :movie

  many_to_many :movies

end
