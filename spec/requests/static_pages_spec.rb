require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_page/home'
      expect(page).to have_content('Sample App')
    end
    it "Должен содеражть 'Home' в '<title>;" do
      visit '/static_page/home'
      expect(page).to have_title ("Ruby on Rails Tutorial")
    end
    it "Не должен переменную чать заголовка" do
      visit '/static_page/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_page/help'
      expect(page).to have_content('Help')
    end
    it "Должен содеражть 'Help' в '<title>;" do
      visit '/static_page/help'
      expect(page).to have_title ("#{base_title} | Help")
    end
  end

  describe "Страница About" do
    it "Должна содеражать контент 'Abot Us'" do
      visit '/static_page/about'
      expect(page).to have_content('About Us')
    end
    it "Должен содеражть 'About' в '<title>;" do
      visit '/static_page/about'

      expect(page).to have_title ("#{base_title} | About")
    end
  end
  describe "Страница Contact" do
    it "Должна содеражать контент 'Contact Us'" do
      visit '/static_page/contact'
      expect(page).to have_content('Contact Us')
    end
    it "Должен содеражть 'Contact Us' в '<title>;" do
      visit '/static_page/contact'

      expect(page).to have_title ("#{base_title} | Contact Us")
    end
  end
end

