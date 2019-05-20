Rails.application.routes.draw do
  root to: 'games#new'

  get '/new', to: 'games#new'
  get '/score', to: 'games#score'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'score', to: 'games#score'
end
