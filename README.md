# Category Tree Rails Engine

This is a Rails Engine that provides category management to a Rails Application. It uses the [ancestry gem](https://github.com/stefankroes/ancestry) to allow users to create categories within categories.

## Installation
In your Rails project:

- Add category_tree to the Gemfile:
    `gem 'category_tree', :path => '/path/to/category_tree'`
- Run `bundle install`
- Edit config/routes.rb and add this line:
    `mount CategoryTree::Engine => "/"`
- The engine contains migrations for the `categories` table which needed to be created in the application's database. To copy these migrations:
    `rake category_tree:install:migrations`
    - If you want to run migrations only from the engine, specify the scope:
        `rake db:migrate SCOPE=category_tree`

## Customizing the category views
The engine can also migrate the view files and assets for customization. To copy them to the parent application:

    rails generate category_tree:views

## Customizing the category controllers
The engine can also migrate the controller files for customization. To copy them to the parent application:

    rails generate category_tree:controllers

## Category Management routes
You can view the routes via: `rake routes`.

## Test Application
You can run a sample application with the engine within the project:

- Go to `spec/test_app`
- Run `rails server`




