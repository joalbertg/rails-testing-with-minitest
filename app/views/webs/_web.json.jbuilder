json.extract! web, :id, :name, :url, :description, :created_at, :updated_at
json.url web_url(web, format: :json)
