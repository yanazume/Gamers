Rails.application.routes.draw do
 get '/search', to: 'searchs#search'
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }

  root to: 'homes#top'
  resources :games do
  resources :post_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  end

   resources :users do
 end


end
