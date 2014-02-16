require 'spec_helper'

describe "User pages" do
  describe "signup page" do
    before { visit signup_path }
    subject { page }
    it { should have_selector('h1', text: 'Sign up') }
    it { should have_title(full_title('Sign up')) }
  end
end
