json.array!(@strategies) do |strategy|
  json.extract! strategy, :id, :title, :intro
  json.url strategy_url(strategy, format: :json)
end
