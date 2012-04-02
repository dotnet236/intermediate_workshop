Shouter::Application.routes.draw do
  root to: "welcome#index"
  resource :dashboard, only: [:show]
  resource :shouts, only: [:create, :show]
  resource :users, only: [:show]
end
