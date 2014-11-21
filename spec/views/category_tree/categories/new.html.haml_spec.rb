require 'rails_helper'
include CategoryTree::Engine.routes.url_helpers

RSpec.describe "category_tree/categories/new", :type => :view do
  before(:each) do
    assign(:category, create(:category))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do
    end
  end
end
