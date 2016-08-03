require 'rails_helper'

RSpec.describe "rest_cats/index", type: :view do
  before(:each) do
    assign(:rest_cats, [
      RestCat.create!(
        :rsetaurant_id => 2,
        :category_id => 3
      ),
      RestCat.create!(
        :rsetaurant_id => 2,
        :category_id => 3
      )
    ])
  end

  it "renders a list of rest_cats" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
