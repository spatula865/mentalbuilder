Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :thermometers

  resources :tests_pssfours

  resources :zatsudans

  resources :ifthens

  resources :weapons

  root 'hello#index'

  get 'home/menu' => 'home#menu'

  get 'home/menu_record' => 'home#menu_record'
  
  get 'home/menu_reflection' => 'home#menu_reflection'

  get 'home/menu_arm' => 'home#menu_arm'

  get '/thermometers' => 'thermometers#new'

  get 'thermometers/new' => 'thermometers#new'

  get 'thermometers/show' => 'thermometers#show'

  post 'thermometers/show' => 'thermometers#show'

  get 'thermometers/show2' => 'thermometers#show2'

  post 'thermometers/show2' => 'thermometers#show2'

  get 'diaries/new' => 'diaries#new'

  get 'tests/menu' => 'tests#menu'

  get 'tests_pssfours/new' => 'tests_pssfours#new'

  get 'tests_pssfours/show/:id' => 'tests_pssfours#show',as:'tests_pssfours_show'

  get 'tests_stresssymptomscales/new' => 'tests_stresssymptomscales#new'

  post 'tests_pssfours/show' => 'tests_pssfours#show'

  get 'tests_pssfours/index' => 'tests_pssfours#index'

  delete 'tests_pssfours/:id' => 'tests_pssfours#destroy'

  get 'zatsudans/index' => 'zatsudans#index'

  post 'zatsudans/show' => 'zatsudans#show'

  get 'ifthens/new' =>'ifthens#new'
end
