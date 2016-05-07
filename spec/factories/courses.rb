FactoryGirl.define do
  factory :course, class: 'Course' do
    name "Curso de Ruby on Rails"
    description "Aprenda Ruby on Rails em 3 dias!"
    status 1
  end

  factory :course2, class: 'Course' do
    name "Nome novo no curso"
    description "Novidades em curso"
    status 1
  end

  factory :course_empty_name, class: 'Course' do
    name "     "
    description "Uma descrição ainda válida"
    status 1
  end
end
