Rails.application.routes.draw do
  root 'lessons#index'

  resource :lessons do
    member do
      get 'electricity'
      get 'matter'
      get 'rock_cycle'
      get 'weather_atmosphere'
      get 'igneous_rock'
      get 'metamorphic_rock'
      get 'index'
    end
  end
  get '/authors' => 'lessons#authors'
end
