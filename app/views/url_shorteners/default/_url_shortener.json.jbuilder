json.extract! url_shortener, :id, :url_given, :url_shortened, :created_at, :updated_at
json.url url_shortener_url(url_shortener, format: :json)
