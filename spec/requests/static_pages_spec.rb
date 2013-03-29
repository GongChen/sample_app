require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',:text => "Ruby on Rails Sample App | Home")
    end
  end
  describe "help page" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',:text => "Ruby on Rails Sample App | Help")
    end
  end
  describe "about page" do
    it "should have the content 'about'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',:text => "Ruby on Rails Sample App | About")
    end
  end
end