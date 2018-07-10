require 'rails_helper'

describe 'a user visits new student page' do
  it 'can create a new student' do

    visit new_student_path

    fill_in :student_name, with: "John"
    click_button "Create Student"

    expect(current_path).to eq("/students")
    expect(page).to have_content("John")
  end
end
