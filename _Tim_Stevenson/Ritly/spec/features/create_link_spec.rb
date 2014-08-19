require 'spec_helper'
require 'rails_helper'

feature "create_link", :type => :feature do
	let(:user) {User.create_with_password('user33', 'password33')}
	scenario "user creates link" do
		visit "/sessions/new"

		fill_in "username", with: 'user33'
		fill_in "password", with: 'password33'

		click_button "Login"

		click_button "Make a new URL"

		fill_in "link", with: "http://google.com"
		click_button "submit"

		expect(page).to have_text("Here's the new code for your url!")
	end
end
