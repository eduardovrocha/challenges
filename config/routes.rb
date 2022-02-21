Rails.application.routes.draw do
  resources :url_shorteners
  root to: 'url_shorteners#index'
end
