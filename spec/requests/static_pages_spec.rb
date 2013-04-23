require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'ToDo World'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'ToDo World')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "ToDo World | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "ToDo World | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "ToDo World | About Us")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Conctact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "ToDo World | Contact Us")
    end
  end
end