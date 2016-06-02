json.array!(@mocks) do |mock|
  json.extract! mock, :id, :path, :status, :method, :headers, :data_type, :body
  json.url mock_url(mock, format: :json)
end
