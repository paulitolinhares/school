require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    assign(:courses, [
      Course.create!(attributes_for(:course)),
      Course.create!(attributes_for(:course2))
    ])
  end

  it "renders a list of courses" do
    render
  end
end
