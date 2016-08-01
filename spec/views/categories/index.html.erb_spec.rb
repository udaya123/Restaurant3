require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :cuisinetype => "Cuisinetype"
      ),
      Category.create!(
        :cuisinetype => "Cuisinetype"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Cuisinetype".to_s, :count => 2
  end
end
