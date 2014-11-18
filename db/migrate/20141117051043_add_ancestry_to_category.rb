class AddAncestryToCategory < ActiveRecord::Migration
  def change
    add_column :category_tree_categories, :ancestry, :string
  end
end
