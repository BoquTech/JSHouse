json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :name, :phone, :email, :message
  json.url feedback_url(feedback, format: :json)
end
