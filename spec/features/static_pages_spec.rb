require 'spec_helper'

#subject { page }


describe "Static pages" do
  describe "Home page" do
    before { visit root_path }
    subject { page }
    it { should have_selector('h1', :text => 'Sample App') }
    it { should have_title(full_title('Home')) }
    it { should_not have_title('| custom') }
  end

  describe "Help page" do
    before { visit help_path }
    subject { page }
    it { should have_selector('h1', :text => 'Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }
    subject { page }
    it { should have_selector('h1', :text => 'About Us') }
    it { should have_title(full_title('About')) }
  end

  describe "Contact page" do
    before { visit contact_path }
    subject { page }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_title(full_title('Contact')) }
  end
end