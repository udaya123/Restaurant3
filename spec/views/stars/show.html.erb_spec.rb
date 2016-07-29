require 'rails_helper'

RSpec.describe "stars/show", type: :view do
  before(:each) do
    @star = assign(:star, Star.create!(
      :userwhostarred => "Userwhostarred",
      :Restaurantthatwasstarred => "Restaurantthatwasstarred"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Userwhostarred/)
    expect(rendered).to match(/Restaurantthatwasstarred/)
  end
end
