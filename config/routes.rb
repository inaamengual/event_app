Rails.application.routes.draw do
  # devise routes, keep in this order ###################
  devise_scope :user do
    authenticated :user do
      root                to: "companies#index",
                          as: :authenticated_user_root
    end
  end
  devise_scope :company do
    authenticated :company do
      root                to: "inventory_items#index",
                          as: :authenticated_company_root
    end
  end
  devise_for :companies,  path: "companies",
    controllers: {
      sessions:           "companies/sessions",
      registrations:      "companies/registrations",
      passwords:          "companies/passwords"
    }
  devise_for :users,      path: "users",
    controllers: {
      sessions:           "users/sessions",
      registrations:      "users/registrations",
      passwords:          "users/passwords"
    }
  root                    to: "users/sessions#new"
  # non-devise routes ####################################
  resources :companies, only: [:index, :show, :edit, :update]
  resources :inventory_items
  resources :booking_requests
  resources :item_rentals


end


#   -categories to work
#   -images on items & companies
#   -show items on search bar above
# need to create booking_request table --
#   -CALENDAR function
#   -approve/decline request
