Rails.application.routes.draw do

  root "pages#index"

  get    "login"   => "sessions#new"
  post   "login"   => "sessions#create"
  delete "logout"  => "sessions#destroy"

  get "users/:id", to: "users#show", as: "user"

  resources :students, only: [:index, :show]

  get "/admin" => "admin/admin#index", as: "admin_index"
  namespace :admin do
    resources :users
    resources :pages
    resources :navigation_items
    resources :students
  end

  get "/:id", to: "pages#show", as: "page"
  get "*new_page" => "pages#show", as: "new_page"

end
