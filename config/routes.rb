Rails.application.routes.draw do
  resources :blogs
  #get 'welcome/index'
  resources:articles

  root 'article#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
