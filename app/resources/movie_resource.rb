class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :flyer, :string
  attribute :title, :string
  attribute :production_year, :datetime
  attribute :description, :string
  attribute :director_id, :integer

  # Direct associations

  has_many   :reviews

  has_many   :casts,
             resource: CharacterResource

  # Indirect associations

end
