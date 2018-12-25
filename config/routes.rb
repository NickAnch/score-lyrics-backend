Rails.application.routes.draw do
  devise_for :users,
             :controllers => {
               :registrations => 'registrations'
             }
  resources :users, only: :show
  resource :profile, only: %i[show update]

  resources :songs do
    resources :ratings, only: :create
  end
end
