require 'rails_helper'

describe 'user visits show student page' do
  it "sees a specific student name" do
    student1 = Student.create(name: "Elena")
    student2 = Student.create(name: "Charles")

    visit student_path(student1)

    expect(page).to have_content("#{student1.name}")
    expect(page).to_not have_content("#{student2.name}")
  end
end
