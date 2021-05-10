module Features

  def display_welcome
    have_css "h1.welcome", text: "Welcome to Cycling Company"
  end

  def greet_user(name)
    have_css "h2.welcome", text: "Welcome back, #{ name }!"
  end
  
  def sign_up(email, name, password, password_confirmation)
    fill_in "Email", with: email
    fill_in "Name", with: name
    fill_in "Password", with: password
    fill_in "Password confirmation", with: password_confirmation
    click_button "Join"
  end
  
end
