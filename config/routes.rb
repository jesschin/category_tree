module CategoryTree
  Engine.routes.draw do
    resources :categories, :as => :categories do
      member do
        resources :children, :only => [:new], :controller => 'categories'
      end
    end

    namespace :api do
      resources :categories, :only => [:index, :show]
    end
  end
end
