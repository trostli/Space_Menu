SpaceMenus::Application.routes.draw do

  resources :menus, only: [:index, :new, :create] do
    resources :items, only: [:new, :create, :show]
  end

  root to: "menus#index"
end
