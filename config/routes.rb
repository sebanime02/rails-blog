Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do # Resource REST
    resources :comments #Nested API REST 
  end
  root 'welcome#index'


  #if REST misses would be get 'profile', to: 'article#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
