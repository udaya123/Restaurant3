require 'rails_helper'

RSpec.describe "stars/new", type: :view do
  before(:each) do
    assign(:star, Star.new(
      :userwhostarred => "MyString",
      :Restaurantthatwasstarred => "MyString"
    ))
  end

  it "renders new star form" do
    render

    assert_select "form[action=?][method=?]", stars_path, "post" do

      assert_select "input#star_userwhostarred[name=?]", "star[userwhostarred]"

      assert_select "input#star_Restaurantthatwasstarred[name=?]", "star[Restaurantthatwasstarred]"
    end
  end
end
