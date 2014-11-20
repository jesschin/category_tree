$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "category_tree/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'category_tree'
  s.version     = CategoryTree::VERSION
  s.authors     = ['Joan Tiffany Siy']
  s.email       = ['joan@teamcodeflux.com']
  s.homepage    = 'http://www.teamcodeflux.com'
  s.summary     = 'Category Tree Engine'
  s.description = "Module for Category CRUD"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.7"
  s.add_dependency 'pg', '~> 0.17.1'

  s.add_dependency 'sass-rails', '~> 4.0.4'
  s.add_dependency 'coffee-rails', '~> 4.1.0'
  s.add_dependency 'jquery-rails', '~> 3.1.2'
  s.add_dependency 'jquery-ui-rails', '~> 5.0.2'
  s.add_dependency 'haml-rails', '~> 0.5.3'
  s.add_dependency 'simple_form', '~> 3.1.0.rc2'
  s.add_dependency 'ancestry', '~> 2.1.0'
  s.add_dependency 'jbuilder', '~> 2.2.5'
end
