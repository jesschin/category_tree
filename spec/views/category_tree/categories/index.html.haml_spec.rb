require 'rails_helper'
include CategoryTree::Engine.routes.url_helpers

RSpec.describe 'category_tree/categories/index', :type => :view do
  before(:each) do
    assign(:categories, [
      create(:category),
      create(:category)
    ])
  end

  it 'renders a list of categories' do
    render
  end
end
