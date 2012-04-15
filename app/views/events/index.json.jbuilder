json.array!(@events) do |json, event|
  json.extract! event, :id, :title, :start, :end, :url
end
