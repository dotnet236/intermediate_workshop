Shouter::Application.routes.draw do
  root to: "welcome#index"

  resource :dashboards, only: [:show]
end
