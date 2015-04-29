module CategoryTree
  Engine.routes.draw do
    resources :categories, :as => :categories, :except => [:new, :create]
  end
end
