require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        :user_id => "User",
        : => 2,
        :restaurant_id => "Restaurant",
        : => 3,
        :email => "Email",
        : => "",
        :requesteddatetime => "Requesteddatetime",
        :shortmessage => "Shortmessage",
        : => ""
      ),
      Reservation.create!(
        :user_id => "User",
        : => 2,
        :restaurant_id => "Restaurant",
        : => 3,
        :email => "Email",
        : => "",
        :requesteddatetime => "Requesteddatetime",
        :shortmessage => "Shortmessage",
        : => ""
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Restaurant".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Requesteddatetime".to_s, :count => 2
    assert_select "tr>td", :text => "Shortmessage".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
