require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(attributes_for(:course)))
    @students = @course.students
  end

  it "renders attributes in <p>" do
    render
  end
end
