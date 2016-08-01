require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :cuisinetype => "Cuisinetype"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cuisinetype/)
  end
end
