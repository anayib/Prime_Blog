json.array!(@tips) do |tip|
  json.extract! tip, :id, :title, :strategy_id_id
  json.url tip_url(tip, format: :json)
end
