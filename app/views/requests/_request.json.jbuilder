json.extract! request, :id, :title, :category_id, :requestoption_id, :streetname, :landmark, :housenumber, :description, :date, :time, :created_at, :updated_at
json.url request_url(request, format: :json)
