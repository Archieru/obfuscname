Rails.application.routes.draw do
  get '/(:seed)', to: "get_name#index"
end
