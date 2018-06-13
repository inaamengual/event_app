Rails.application.routes.draw do
  root to: 'welcome#index'

  authenticated :user do
    root to: "companies#index", as: :authenticated_user_root
  end

  authenticated :company do
    root to: "companies#show", as: :authenticated_company_root
  end

  devise_for :companies,
    path: 'companies',
    controllers: {
      sessions: 'companies/sessions',
      registrations: 'companies/registrations',
      passwords: 'companies/passwords'
    }

  devise_for :users,
    path: 'users',
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords'
    }

  resources :companies, only: [:index, :show]

  unauthenticated :user do
    root to: "users/sessions#new"
  end

  unauthenticated :company do
    root to: "companies/sessions#new"
  end


end
