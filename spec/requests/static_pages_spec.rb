require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end
    it "Должен содеражть 'Home' в '<title>;" do
      visit root_path
      expect(page).to have_title ("Ruby on Rails Tutorial")
    end
    it "Не должен переменную чать заголовка" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    it "Должен содеражть 'Help' в '<title>;" do
      visit help_path
      expect(page).to have_title ("#{base_title} | Help")
    end
  end

  describe "Страница About" do
    it "Должна содеражать контент 'Abot Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    it "Должен содеражть 'About' в '<title>;" do
      visit about_path

      expect(page).to have_title ("#{base_title} | About")
    end
  end
  describe "Страница Contact" do
    it "Должна содеражать контент 'Contact Us'" do
      visit contact_path
      expect(page).to have_content('Contact Us')
    end
    it "Должен содеражть 'Contact Us' в '<title>;" do
      visit contact_path

      expect(page).to have_title ("#{base_title} | Contact Us")
    end
  end
end

