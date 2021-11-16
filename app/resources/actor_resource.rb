class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :actor_name, :string
  attribute :actor_number, :integer
  attribute :dob, :datetime
  attribute :bio, :string
  attribute :image, :string

  # Direct associations

  has_many   :characters

  # Indirect associations

end
