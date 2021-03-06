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
      get 'mineral_identification'
      get 'index'
      get :sedimentary_rock
    end
  end
  get '/authors' => 'lessons#authors'
  get '/sitemap.xml' => 'lessons#sitemap'
end
