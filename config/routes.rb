SpaceMenus::Application.routes.draw do

  resources :menus, only: [:index, :new, :create]

  root to: "menus#index"
end
