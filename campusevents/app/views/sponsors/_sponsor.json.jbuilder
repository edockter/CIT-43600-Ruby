json.extract! sponsor, :id, :name, :url, :logo, :created_at, :updated_at
json.url sponsor_url(sponsor, format: :json)