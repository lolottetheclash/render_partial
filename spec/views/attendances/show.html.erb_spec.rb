require 'rails_helper'

RSpec.describe "attendances/show", type: :view do
  before(:each) do
    @attendance = assign(:attendance, Attendance.create!(
      :stripe_customer_id => "Stripe Customer",
      :user => nil,
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Stripe Customer/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
