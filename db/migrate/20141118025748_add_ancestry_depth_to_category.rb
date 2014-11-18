class AddAncestryDepthToCategory < ActiveRecord::Migration
  def change
    add_column :category_tree_categories, :ancestry_depth, :integer, :default => 0
  end
end
