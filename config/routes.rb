Boken::Application.routes.draw do
  resources :goals

  devise_for :users, path: "accounts", path_names: {sign_in: "login", sign_out: "logout"}

  resources :users do
    resource :list
  end

 # match '/mylist' => user_list_path(current_user)
  match '/contact' => 'static#contact'
  match '/about' => 'static#about'

  root to: 'static#home'
end
