json.extract! event, :id, :name, :description, :avalible_tickets, :date, :capacity, :created_at, :updated_at
json.url event_url(event, format: :json)
