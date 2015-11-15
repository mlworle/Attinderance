require "rails_helper"

feature "User creates new teacher" do
  scenario "successfully" do
    visit new_teacher_path

    fill_in "Name", :with => "Name"
    fill_in "Email", :with => "teacher@example.com"
    fill_in "Password", :with => "password123"
    fill_in "Confirmation", :with => "password123"

    click_on "Create Teacher"

    #expect(page).to display_teacher :"Name"  
  end

end
