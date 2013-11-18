require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home' # visit and page are capybara functions
      page.should have_content('Sample App')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help' # visit and page are capybara functions
      page.should have_content('Help')
    end
  end

end
