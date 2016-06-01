json.array!(@users) do |user|
  json.extract! user, :id, :name, :last_name, :birthdate, :gender
  json.url user_url(user, format: :json)
end
