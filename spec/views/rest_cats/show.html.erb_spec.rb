require 'rails_helper'

RSpec.describe "rest_cats/show", type: :view do
  before(:each) do
    @rest_cat = assign(:rest_cat, RestCat.create!(
      :rsetaurant_id => 2,
      :category_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
