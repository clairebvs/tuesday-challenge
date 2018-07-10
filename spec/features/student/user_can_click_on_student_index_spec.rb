require "rails_helper"

describe 'user visits index page student' do
  it 'can click on a student to go to a student show page' do
    student1 = Student.create(name: "Eli")
    student1 = Student.create(name: "Ariel")

    visit students_path

    click_link ("#{student1.name}")

    expect(current_path).to eq(student_path(student1))


  end
end
