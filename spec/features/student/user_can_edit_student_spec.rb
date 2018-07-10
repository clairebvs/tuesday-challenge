require 'rails_helper'

describe 'user visit student edit page' do
  it 'can edit a student' do
    student1 = Student.create(name: "Nathan")

    visit student_path(student1)
    click_link('Edit')

    fill_in :student_name, with: 'Ilona'
    click_button 'Update'

    expect(current_path).to eq(student_path(student1))
    expect(page).to have_content("Ilona")
  end
end
