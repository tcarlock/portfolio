Portfolio::Application.routes.draw do

  scope 'api', defaults: { format: :json } do
    resources :projects
  end

  root to: 'main#index'
  match '*path', to: 'main#index'
end
