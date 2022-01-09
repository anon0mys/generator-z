Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get 'name', to: 'names#show'
      get 'location', to: 'locations#show'
      get 'number', to: 'numbers#show'
      get 'thing', to: 'things#show'
      get 'word', to: 'words#show'
    end
  end
end
