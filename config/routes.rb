module CategoryTree
  Engine.routes.draw do
    resources :categories, :as => :categories, :except => [:new, :create]

    namespace :api do
      resources :categories, :only => [:index, :show]
    end
  end
end
