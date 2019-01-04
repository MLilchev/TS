Rails.application.routes.draw do
  root to: 'stormdata#index'
  resources :stormdata, only: [:index]
  resources :visualisation, only: [:index]
  resources :eventdetails, only: [:index]
  resources :tabledata, only: [:index]
  get 'stormdata/index'
  get 'visualisation/index'
  get 'eventdetails/index'
  get 'eventdetails', :controller => :visualisation, :action => :index
  get 'visualisation', to: 'visualisation#index'
  get 'eventdetails/:id', to: 'eventdetails#show'
  get 'stormdata/:id', to: 'stormdata#show'
  get 'tabledata/index'
  get 'api/state', to: 'api#state'
  get 'api/episode', to: 'api#episode'
  get 'api/event', to: 'api#event'
  get 'heatmap/index'
end
