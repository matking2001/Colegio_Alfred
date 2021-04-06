Rails.application.routes.draw do
  
  devise_for :users

  get 'noticias/index'
  get 'noticias/show'
  get 'noticias/edit'
  get 'noticias/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "noticias#index"
end
