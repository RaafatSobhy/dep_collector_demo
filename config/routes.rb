Rails.application.routes.draw do
  resources :test_dep_collectors do
    collection do
      get 'collector', to: 'test_dep_collectors#proj_dep'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
