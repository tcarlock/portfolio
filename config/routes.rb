Portfolio::Application.routes.draw do
  resources :projects

  root to: 'main#index'
end
