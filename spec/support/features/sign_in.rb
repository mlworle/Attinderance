module Features
  def sign_in
    sign_in_as :name => "Name", :email => "teacher@example.com"  
  end

  def sign_in_as(name, email)
    visit root_path
    fill_in "Name", with: name
    fill_in "Email", with: email
    click_on "Create New"
  end

end

