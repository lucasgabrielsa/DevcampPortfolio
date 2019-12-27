Rails.application.routes.draw do
  resources :policenas

  get  'test-policena', to: 'policenas#index', as: 'samuca'

  resources :high_scores
  get 'angular-items', to: 'portfolios#angular', as:'angular-items'

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as:'portfolio_show'

  resources :blogs do
    member do
      post :toogle_status
    end
  end

  root to: 'pages#home'
  #get 'pages/home'

  #get 'pages/about
  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'
  #get 'pages/contact'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
