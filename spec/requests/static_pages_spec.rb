require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_page/home'
      expect(page).to have_content('Sample App')
    end
    it "Должен содеражть 'Home' в '<title>;" do
      visit '/static_page/home'
      expect(page).to have_title ("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_page/help'
      expect(page).to have_content('Help')
    end
    it "Должен содеражть 'Help' в '<title>;" do
      visit '/static_page/help'
      expect(page).to have_title ("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "Страница About" do
    it "Должна содеражать контент 'Abot Us'" do
      visit '/static_page/about'
      expect(page).to have_content('About Us')
    end
    it "Должен содеражть 'About' в '<title>;" do
      visit '/static_page/about'

      expect(page).to have_title ("Ruby on Rails Tutorial Sample App | About")
    end

  end
end

