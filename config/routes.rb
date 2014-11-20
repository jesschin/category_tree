CategoryTree::Engine.routes.draw do
  resources :categories

  namespace :api do
    resources :categories, :only => [:index, :show]
  end
end
