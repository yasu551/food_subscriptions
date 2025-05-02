Rails.application.routes.draw do
  devise_for :administrators, only: %i[sessions], controllers: { sessions: 'admins/sessions' }

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
