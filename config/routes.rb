Metaconomy::Application.routes.draw do
  match "/auth/charon/callback", :to => "sessions#create"
  match "/logout", :to => "sessions#logout", :as => :logout

  resources :pages

  root :to => "home#index"
end
