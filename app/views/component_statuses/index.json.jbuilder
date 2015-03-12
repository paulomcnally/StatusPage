json.array!(@component_statuses) do |component_status|
  json.extract! component_status, :id, :name, :description, :color
  json.url component_status_url(component_status, format: :json)
end
