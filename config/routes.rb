Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books, only:[:show, :index, :edit, :create]
  resources :users, only:[:show, :index, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
