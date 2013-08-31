json.array!(@performers) do |performer|
  json.extract! performer, :first_name, :white_label_id, :location_id, :avatar, :location, :photo_id, :profile_thumb, :profile_gif
  json.url performer_url(performer, format: :json)
end
