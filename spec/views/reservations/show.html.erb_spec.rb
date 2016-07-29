require 'rails_helper'

RSpec.describe "reservations/show", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :user_id => "User",
      : => 2,
      :restaurant_id => "Restaurant",
      : => 3,
      :email => "Email",
      : => "",
      :requesteddatetime => "Requesteddatetime",
      :shortmessage => "Shortmessage",
      : => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Restaurant/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Requesteddatetime/)
    expect(rendered).to match(/Shortmessage/)
    expect(rendered).to match(//)
  end
end
