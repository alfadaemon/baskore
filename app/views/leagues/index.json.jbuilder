json.array!(@leagues) do |league|
  json.extract! league, :id, :name, :city
  json.url league_url(league, format: :json)
end
