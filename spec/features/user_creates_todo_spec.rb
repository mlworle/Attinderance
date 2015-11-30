require "rails_helper"

# Video 2: create new  
# Video 3: sign in

feature "User creates new todo" do
  scenario "successfully" do
    
    sign_in
  
    create_todo "Buy milk"

    expect(page).to display_todo :"Buy milk"
  end

end
