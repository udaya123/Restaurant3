require 'rails_helper'

RSpec.describe "stars/new", type: :view do
  before(:each) do
    assign(:star, Star.new(
      :userwhostarred => "MyString",
      :restaurantthatwasstarred => "MyString"
    ))
  end

  it "renders new star form" do
    render

    assert_select "form[action=?][method=?]", stars_path, "post" do

      assert_select "input#star_userwhostarred[name=?]", "star[userwhostarred]"

      assert_select "input#star_restaurantthatwasstarred[name=?]", "star[restaurantthatwasstarred]"
    end
  end
end
