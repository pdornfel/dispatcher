json.array!(@notices) do |notice|
  json.extract! notice, :id, :title, :description
  json.url notice_url(notice, format: :json)
end
