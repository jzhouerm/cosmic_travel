Rails.application.routes.draw do
  resources :planets
  resources :missions, except: [:show, :index]
  resources :scientists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'missions/about', to: 'missions#about'
end
