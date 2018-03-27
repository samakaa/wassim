Rails.application.routes.draw do
  devise_for :users,
               :path=> '',
               :path_names=> {:sign_in=> 'login', :sign_out=> 'logout', :edit=> 'profile'},
               :controllers=> {:registrations=> 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#home'
# chemin d'accès de la méthode show du controller User
resources :users, only: [:show]

end
