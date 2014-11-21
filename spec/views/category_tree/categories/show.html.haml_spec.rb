require 'rails_helper'
include CategoryTree::Engine.routes.url_helpers

RSpec.describe 'category_tree/categories/show', :type => :view do
  before(:each) do
    @category = assign(:category, create(:category))
  end

  it 'renders attributes in <p>' do
    render
  end
end
