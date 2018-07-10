require 'rails_helper'

describe 'user visits index students page' do
  it "sees all students names" do
    student1 = Student.create(name: "Elena")
    student2 = Student.create(name: "Charles")
    student3 = Student.create(name: "Robin")

    visit students_path

    expect(page).to have_content("#{student1.name}")
    expect(page).to have_content("#{student2.name}")
    expect(page).to have_content("#{student3.name}")
  end
end
