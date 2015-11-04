json.array!(@games) do |game|
  json.extract! game, :id, :name, :home_id, :visit_id, :game_date, :home_score, :visit_score
  json.url game_url(game, format: :json)
end
