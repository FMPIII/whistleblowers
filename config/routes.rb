Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'referees#index'
  resources :referees do
	  resources :reviews
  end
  get '/games' => 'games#index'
end
