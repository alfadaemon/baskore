json.array!(@game_logs) do |game_log|
  json.extract! game_log, :id, :game_id, :player_id, :period, :event, :count
  json.url game_log_url(game_log, format: :json)
end
