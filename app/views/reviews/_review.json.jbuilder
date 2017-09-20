json.extract! review, :id, :score, :professor_id, :desc, :created_at, :updated_at
json.url review_url(review, format: :json)
