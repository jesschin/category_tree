module CategoryTree
  class ControllersGenerator < Rails::Generators::Base
    def copy_controllers
      ControllersGenerator.source_root File.expand_path('../../../../app/controllers', __FILE__)
      directory 'category_tree', 'app/controllers/category_tree'
    end
  end
end
