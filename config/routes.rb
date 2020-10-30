Rails.application.routes.draw do
  devise_for :users
  root to: "schedules#top"
  resources :schedules
end
