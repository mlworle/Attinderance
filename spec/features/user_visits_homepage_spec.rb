require "rails_helper"

feature "Teacher visits homepage" do
  scenario "successfully" do
    visit root_path

    expect(page).to have_css :title, "Attinderance"
  end
end
