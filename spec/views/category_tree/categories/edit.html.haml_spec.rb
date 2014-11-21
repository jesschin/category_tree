require 'rails_helper'
include CategoryTree::Engine.routes.url_helpers

RSpec.describe 'category_tree/categories/edit', :type => :view do
  before(:each) do
    @category = assign(:category, create(:category))
  end

  it 'renders the edit category form' do
    render

    assert_select 'form[action=?][method=?]', category_path(@category), 'post' do
    end
  end
end
