require 'rails_helper'

RSpec.feature "Matrícula", type: :feature do

  before :each do
    @student = create(:student)
    @course = create(:course)
  end

  
  it "matricula o usuário em um curso" do
    visit "/matricula/#{@student.id}"
    select @course.name, :from => 'course_id'
    click_button 'Matricular estudante'
    current_path.should eq("/students/#{@student.id}")
  end
end
