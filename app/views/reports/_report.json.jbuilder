json.extract! report, :id, :title, :description, :report_category_id, :location, :landmark, :created_at, :updated_at
json.url report_url(report, format: :json)
