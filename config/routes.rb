Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :thermometers

  resources :tests_pssfours

  root 'hello#index'

  get 'home/menu' => 'home#menu'

  get '/thermometers' => 'thermometers#new'

  get 'thermometers/new' => 'thermometers#new'

  get 'thermometers/show' => 'thermometers#show'

  get 'diaries/new' => 'diaries#new'

  get 'tests/menu' => 'tests#menu'

  get 'tests_pssfours/new' => 'tests_pssfours#new'

  get 'tests_pssfours/show/:id' => 'tests_pssfours#show',as:'tests_pssfours_show'

  get 'tests_stresssymptomscales/new' => 'tests_stresssymptomscales#new'

  post 'tests_pssfours/show' => 'tests_pssfours#show'

  get 'tests_pssfours/index' => 'tests_pssfours#index'

end
