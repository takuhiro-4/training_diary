json.extract! diary, :id, :name, :start_time, :created_at, :updated_at
json.url diary_url(diary, format: :json)
