require 'rails_helper'

describe 'user visit student edit page' do
  it 'can edit a student' do
    student1 = Student.create(name: "Nathan")
    student2 = Student.create(name: "Richard")

    visit edit_student_path(student1)

    fill_in 'student[:name]', with: 'Ilona'
    click_on('Update')

    expect(current_path).to eq(student_path(student1))
    expect(page).to have_content("Ilona")
  end
end
