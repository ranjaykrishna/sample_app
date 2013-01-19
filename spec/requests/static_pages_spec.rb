require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path }
    it { page.should have_selector('h1', :text => 'Welcome to Chirpr') }
    it { page.should have_selector('title', :text => "Chirpr | Home") }
  end

  describe "Help page" do
    before { visit help_path }
    it { page.should have_selector('h1', :text => 'Help') }
    it { page.should have_selector('title', :text => "Chirpr | Help") }
  end

  describe "About page" do
    before { visit about_path }
    it { page.should have_selector('h1', :text => 'About Us') }
    it { page.should have_selector('title', :text => "Chirpr | About Us") }
  end
  
  describe "Contact page" do
    before { visit contact_path }
    it { page.should have_selector('h1', text: 'Contact') }
    it { page.should have_selector('title', text: "Chirpr | Contact") }
  end
end
