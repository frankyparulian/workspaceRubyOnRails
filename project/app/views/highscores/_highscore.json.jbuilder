json.extract! highscore, :id, :game, :score, :created_at, :updated_at
json.url highscore_url(highscore, format: :json)