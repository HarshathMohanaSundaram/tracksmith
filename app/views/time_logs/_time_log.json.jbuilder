json.extract! time_log, :id, :topic_id, :time_spent, :created_at, :updated_at
json.url time_log_url(time_log, format: :json)
