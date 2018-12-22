Rails.application.routes.draw do
  devise_for :users
  # devise_for :users,
  #            path: '',
  #            path_names: {
  #              sign_in: 'login',
  #              sign_out: 'logout',
  #              registration: 'signup'
  #            },
  #            controllers: {
  #              sessions: 'sessions',
  #              registrations: 'registrations'
  #            }
  resources :songs do
    resources :ratings, only: :create
  end
  resources :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
