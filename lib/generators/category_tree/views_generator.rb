module CategoryTree
  class ViewsGenerator < Rails::Generators::Base

    def set_root
      ViewsGenerator.source_root File.expand_path('../../../../app', __FILE__)
    end

    def copy_views
      directory 'views/category_tree', 'app/views/category_tree'
    end

    def copy_assets
      directory 'assets/stylesheets/category_tree', 'app/assets/stylesheets/category_tree'
      directory 'assets/javascripts/category_tree', 'app/assets/javascripts/category_tree'
    end
  end
end
