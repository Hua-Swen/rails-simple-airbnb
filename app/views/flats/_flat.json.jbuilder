json.extract! flat, :id, :name, :address, :description, :price_per_night, :number_of_guests, :image_url, :created_at, :updated_at
json.url flat_url(flat, format: :json)
