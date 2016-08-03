require 'rails_helper'

RSpec.describe "stars/index", type: :view do
  before(:each) do
    assign(:stars, [
      Star.create!(
        :userwhostarred => "Userwhostarred",
        :restaurantthatwasstarred => "Restaurantthatwasstarred"
      ),
      Star.create!(
        :userwhostarred => "Userwhostarred",
        :restaurantthatwasstarred => "Restaurantthatwasstarred"
      )
    ])
  end

  it "renders a list of stars" do
    render
    assert_select "tr>td", :text => "Userwhostarred".to_s, :count => 2
    assert_select "tr>td", :text => "Restaurantthatwasstarred".to_s, :count => 2
  end
end
