Boken::Application.routes.draw do

  devise_for :users, path: "accounts", path_names: {sign_in: "login", sign_out: "logout"}

  resources :global_goals
  resources :users do
    resource :profile
  end

  resource :profile do
    resources :user_goals
  end

  match '/contact' => 'static#contact'
  match '/about' => 'static#about'

  root to: 'static#home'
end
