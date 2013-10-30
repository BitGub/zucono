require 'spec_helper'

describe "AuthenticationPages" do
  
  subject { page }
  
  describe "home page" do
    before { visit root_path }
    
    it { should have_content("Sign in") }
    it { should have_title("Sign in") }
  end 
  
  describe "signin" do
    before { visit root_path }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_title('Sign in') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
    end
  end
end
