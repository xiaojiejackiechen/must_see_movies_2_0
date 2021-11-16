class ReviewResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :rating, :integer
  attribute :review, :string
  attribute :reviewer_id, :integer
  attribute :movie_id, :integer

  # Direct associations

  belongs_to :movie

  belongs_to :reviewer,
             resource: ProfileResource

  # Indirect associations

end
