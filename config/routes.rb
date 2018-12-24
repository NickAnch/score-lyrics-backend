Rails.application.routes.draw do
  devise_for :users,
             :controllers => {
               :registrations => 'registrations'
             }
  resources :songs do
    resources :ratings, only: :create
  end
end
