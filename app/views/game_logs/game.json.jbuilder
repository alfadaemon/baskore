json.array!(@game_logs) do |game_log|
  json.id game_log.id
  json.game game_log.game.name
  json.player game_log.player.name
  json.team game_log.player.team.name
  json.period game_log.period
  json.event game_log.name
  json.count game_log.count
  json.url game_log_url(game_log, format: :json)
end
