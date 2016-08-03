require 'rails_helper'

RSpec.describe "rest_cats/edit", type: :view do
  before(:each) do
    @rest_cat = assign(:rest_cat, RestCat.create!(
      :rsetaurant_id => 1,
      :category_id => 1
    ))
  end

  it "renders the edit rest_cat form" do
    render

    assert_select "form[action=?][method=?]", rest_cat_path(@rest_cat), "post" do

      assert_select "input#rest_cat_rsetaurant_id[name=?]", "rest_cat[rsetaurant_id]"

      assert_select "input#rest_cat_category_id[name=?]", "rest_cat[category_id]"
    end
  end
end
