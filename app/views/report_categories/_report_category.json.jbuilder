json.extract! report_category, :id, :name, :description, :created_at, :updated_at
json.url report_category_url(report_category, format: :json)
