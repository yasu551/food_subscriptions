Rails.application.routes.draw do
  devise_for :administrators, only: %i[sessions], controllers: { sessions: 'admins/sessions' }
  namespace :admins do
    root to: 'plans#index'
    resources :plans, only: %i[index edit update]
    resources :ingredient_sets, only: %i[index new create edit update]
  end

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
