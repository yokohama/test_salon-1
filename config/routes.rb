Rails.application.routes.draw do
  devise_for :members, controllers: {
    sessions: 'members/sessions',
    passwords: 'members/passwords',
    registrations: 'members/registrations'
  }
  devise_for :staffs, controllers: {
    sessions: 'staffs/sessions',
    passwords: 'staffs/passwords'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  
  namespace :staffs do
    resource :dashboards, only: [:show]
    resources :members, only: [:index] do
      collection do
        get 'search'
      end 
    end
    resources :categories
    resources :products
  end
  
  namespace :members do
    resource :dashboards, only: [:show]
    resource :profiles, only: [:show, :edit, :update]
    resources :products, only: [:index, :show]
    resources :categories, only: [:index, :show]
  end

end

