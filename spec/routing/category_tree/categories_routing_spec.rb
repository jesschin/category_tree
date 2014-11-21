require "rails_helper"

module CategoryTree
  RSpec.describe CategoriesController, :type => :routing do
    describe "routing" do

      routes { CategoryTree::Engine.routes }

      it "routes to #index" do
        expect(:get => 'categories').to route_to(:controller => 'category_tree/categories',
                                                 :action => 'index')
      end

      it "routes to #new" do
        expect(:get => "categories/new").to route_to(:controller => 'category_tree/categories',
                                                     :action => 'new')
      end

      it "routes to #show" do
        expect(:get => "categories/1").to route_to(:controller => 'category_tree/categories',
                                                   :action => 'show', :id => '1')
      end

      it "routes to #edit" do
        expect(:get => "categories/1/edit").to route_to(:controller => 'category_tree/categories',
                                                        :action => 'edit', :id => '1')
      end

      it "routes to #create" do
        expect(:post => "categories").to route_to(:controller => 'category_tree/categories',
                                                  :action => 'create')
      end

      it "routes to #update" do
        expect(:put => "categories/1").to route_to(:controller => 'category_tree/categories',
                                                   :action => 'update', :id => '1')
      end

      it "routes to #destroy" do
        expect(:delete => "categories/1").to route_to(:controller => 'category_tree/categories',
                                                      :action => 'destroy', :id => '1')
      end

    end
  end
end
