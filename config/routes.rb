Rails.application.routes.draw do
  resources :boards do
    resources :pedals do
      resources :knobs
    end
  end


  root "sessions#new"
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/userhome' => "users#show"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
