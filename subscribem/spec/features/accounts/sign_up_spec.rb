require 'rails_helper'

feature "Account" do
    scenario "creating an account" do
        visit subscribem.root_path 
        click_link "Account Sign Up"
        fill_in "Name", :with => "Test"
        fill_in "Email", :with => "subscribem@example.com"
        fill_in "Password", :with => "asdasd"
        fill_in "Password confirmation", :with => "asdasd"
        click_button "Create Account"
        success_message = "Your account has been successfully created."
        expect(page).to have_content(success_message)
        expect(page).to have_content("Signed in as subscribem@example.com")
    end
end