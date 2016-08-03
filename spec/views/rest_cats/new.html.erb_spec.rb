require 'rails_helper'

RSpec.describe "rest_cats/new", type: :view do
  before(:each) do
    assign(:rest_cat, RestCat.new(
      :rsetaurant_id => 1,
      :category_id => 1
    ))
  end

  it "renders new rest_cat form" do
    render

    assert_select "form[action=?][method=?]", rest_cats_path, "post" do

      assert_select "input#rest_cat_rsetaurant_id[name=?]", "rest_cat[rsetaurant_id]"

      assert_select "input#rest_cat_category_id[name=?]", "rest_cat[category_id]"
    end
  end
end
