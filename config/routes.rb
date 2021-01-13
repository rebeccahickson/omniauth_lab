Rails.application.routes.draw do
  get 'welcome/home'
  root to: 'welcome#home'
  match '/auth/:provider/callback', to: 'sessions#create', via: %i[get post]
end
