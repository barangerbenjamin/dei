Rails.application.routes.draw do
  resources :company_dei_fields do
    delete 'toggle_off'
  end
  resources :dei_field_answers
  resources :dei_fields
  resources :dei_categories
  resources :companies do
    get 'toggle_on'
  end
  get 'profile', to: 'users#profile', as: :profile
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
