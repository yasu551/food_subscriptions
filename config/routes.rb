Rails.application.routes.draw do
  root to: 'plans#index'
  devise_for :users, only: %i[sessions registrations]
  resources :plans, only: %i[index show]

  devise_for :administrators, only: %i[sessions], controllers: { sessions: 'admins/sessions' }
  namespace :admins do
    root to: 'plans#index'
    resources :plans, only: %i[index edit update]
    resources :ingredient_sets, only: %i[index new create edit update]
    resources :deliveries, only: %i[index]
  end

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
