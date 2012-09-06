require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "should have the title 'Gallery App'" do
      visit '/static_pages/home'
      page.should have_selector 'title', :text => 'Gallery App | Home'
    end
  end

  describe "Help Page" do
    it "should have the title 'Gallery App - Help'" do
      visit '/static_pages/help'
      page.should have_selector 'title', :text => 'Gallery App | Help'
    end
  end

  describe "About Page" do
    it "should have the title 'Gallery App - About'" do
      visit '/static_pages/about'
      page.should have_selector 'title', :text => 'Gallery App | About'
    end
  end
end
