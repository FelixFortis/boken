Boken::Application.routes.draw do

  devise_for :users, path: "accounts", path_names: {sign_in: "login", sign_out: "logout"}

  resources :global_goals
  resources :users do
    resource :profile
  end

  match '/contact' => 'static#contact'
  match '/about' => 'static#about'

  root to: 'static#home'
end
