Rails.application.routes.draw do
  scope :api, defaults: {format: 'json'} do
    devise_for :users, defaults: {format: 'json'},
              controllers: {
                registrations: 'registrations'
              }
    resources :users, only: :show
    resource :profile, only: %i[show update]
    resources :genres, only: %i[index]

    resources :songs, only: %i[index create show update] do
      resources :ratings, only: :create
    end
  end
end
