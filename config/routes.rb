Rails.application.routes.draw do

  scope :api, module: :api, defaults: { format: :json } do
    resources :products, only: [:index, :show]
    get 'products/search/:name', to: 'products#search'
  end

  scope module: :public do
    root 'index#index'
    get '*path', to: 'index#index'
  end

end