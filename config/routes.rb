DocLog::Engine.routes.draw do
  root to: "raw_logs#index"
  resources :raw_logs, only: [:index, :show]
  get '/sync', to: 'raw_logs#sync'
end
