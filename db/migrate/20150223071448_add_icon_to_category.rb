class AddIconToCategory < ActiveRecord::Migration
  def change
    add_column :category_tree_categories, :icon, :string
  end
end
