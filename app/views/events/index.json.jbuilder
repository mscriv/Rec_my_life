json.array!(@events) do |event|
  json.extract! event, :id, :title, :start_time, :venue_name, :venue_address, :url, :category_id, :user_id
  json.url event_url(event, format: :json)
end
