Rails.application.routes.draw do
  root 'pages#home'
  resources :solicitudes
  get  'about', to: 'pages#about'
end