require 'rails_helper'

describe 'user visit index student page' do
  it 'can delete a student' do
    student1 = Student.create(name: "Jasmine")
    student2 = Student.create(name: "Jean")

    visit students_path

    expect(page).to have_content(student1.name)
    click_link "Delete"
    expect(current_path).to eq("/students")
    expect(page).to_not have_content(student1.name)
    expect(page).to have_content(student2.name)
  end
end
