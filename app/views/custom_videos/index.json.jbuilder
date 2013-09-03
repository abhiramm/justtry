json.array!(@custom_videos) do |custom_video|
  json.extract! custom_video, :path
  json.url custom_video_url(custom_video, format: :json)
end
