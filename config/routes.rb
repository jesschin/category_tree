module CategoryTree
  Engine.routes.draw do
    resources :categories, :as => :categories
  end
end
