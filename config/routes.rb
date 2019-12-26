Rails.application.routes.draw do
  resources :portfolios, :blogs

  root to: 'pages#home'
  #get 'pages/home'

  #get 'pages/about
  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'
  #get 'pages/contact'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
