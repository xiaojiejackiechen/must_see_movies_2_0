class Profile < ApplicationRecord
  
  include JwtToken
# Direct associations

  has_many   :bookmarks,
             :foreign_key => "user_id",
             :dependent => :destroy

  has_many   :reviews,
             :foreign_key => "reviewer_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :movie,
             :through => :reviews,
             :source => :movie

  has_many   :movies,
             :through => :reviews,
             :source => :movie

  # Validations

  # Scopes

  def to_s
    email
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
