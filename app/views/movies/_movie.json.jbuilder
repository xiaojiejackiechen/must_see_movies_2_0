json.extract! movie, :id, :flyer, :title, :production_year, :description,
              :director_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
