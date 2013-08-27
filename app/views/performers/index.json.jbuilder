json.array!(@performers) do |performer|
  json.extract! performer, 
  json.url performer_url(performer, format: :json)
end
