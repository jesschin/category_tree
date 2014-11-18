class CreateCategoryTreeCategories < ActiveRecord::Migration
  def change
    create_table :category_tree_categories do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
