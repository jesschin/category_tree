Rails.application.routes.draw do

  mount CategoryTree::Engine => '/category_tree'
end
