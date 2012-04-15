SpikeCalendar::Application.routes.draw do
  root :to => 'welcome#index'

  get "welcome/index"

  resources :events
end
