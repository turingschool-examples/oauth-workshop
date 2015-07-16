Rails.application.routes.draw do
  root to: "welcome#index"
  get "/auth/twitter", as: :login
  get "/auth/twitter/callback" => "sessions#create"
  get "/logout" => "sessions#destroy", as: :logout
end
