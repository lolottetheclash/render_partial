Rails.application.routes.draw do
  root 'events#index'
#mise en place de la route pour compléter le formulaire d'inscription ) l'évenement par CB
  post "events/subscribe/:id", to: "events#subscribe", as: "subscription"
  devise_for :users
  resources :attendances
  resources :users 
  resources :events do
  	resources :avatars, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
