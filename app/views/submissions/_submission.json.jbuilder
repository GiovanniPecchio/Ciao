json.extract! submission, :id, :conflict, :computer, :extra_time, :am_pm, :created_at, :updated_at
json.url submission_url(submission, format: :json)