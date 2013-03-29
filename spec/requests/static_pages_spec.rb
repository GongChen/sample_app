require 'spec_helper'

describe "StaticPages" do
  let(:base_title) {"Ruby on Rails Sample App"}
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',:text => "#{base_title} | Home")
    end
  end
  describe "help page" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',:text => "#{base_title} | Help")
    end
  end
  describe "about page" do
    it "should have the content 'about'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',:text => "#{base_title} | About")
    end
  end
  describe "contact page" do
    it "should have the h1 tag 'contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1',:text =>'Contact')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',:text =>"#{base_title} | Contact")
    end
  end
end
