require 'rails_helper'

RSpec.describe "reservations/edit", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :user_id => "MyString",
      : => 1,
      :restaurant_id => "MyString",
      : => 1,
      :email => "MyString",
      : => "MyString",
      :requesteddatetime => "MyString",
      :shortmessage => "MyString",
      : => "MyString"
    ))
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(@reservation), "post" do

      assert_select "input#reservation_user_id[name=?]", "reservation[user_id]"

      assert_select "input#reservation_[name=?]", "reservation[]"

      assert_select "input#reservation_restaurant_id[name=?]", "reservation[restaurant_id]"

      assert_select "input#reservation_[name=?]", "reservation[]"

      assert_select "input#reservation_email[name=?]", "reservation[email]"

      assert_select "input#reservation_[name=?]", "reservation[]"

      assert_select "input#reservation_requesteddatetime[name=?]", "reservation[requesteddatetime]"

      assert_select "input#reservation_shortmessage[name=?]", "reservation[shortmessage]"

      assert_select "input#reservation_[name=?]", "reservation[]"
    end
  end
end
