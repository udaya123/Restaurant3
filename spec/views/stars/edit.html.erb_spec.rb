require 'rails_helper'

RSpec.describe "stars/edit", type: :view do
  before(:each) do
    @star = assign(:star, Star.create!(
      :userwhostarred => "MyString",
      :restaurantthatwasstarred => "MyString"
    ))
  end

  it "renders the edit star form" do
    render

    assert_select "form[action=?][method=?]", star_path(@star), "post" do

      assert_select "input#star_userwhostarred[name=?]", "star[userwhostarred]"

      assert_select "input#star_restaurantthatwasstarred[name=?]", "star[restaurantthatwasstarred]"
    end
  end
end
