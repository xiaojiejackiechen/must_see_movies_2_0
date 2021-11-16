json.extract! director, :id, :director_name, :dob, :director_number, :bio,
              :image, :created_at, :updated_at
json.url director_url(director, format: :json)
