json.extract! review, :id, :rating, :review, :reviewer_id, :movie_id, :created_at, :updated_at
json.url review_url(review, format: :json)
