require 'spec_helper'

describe "AuthenticationPages" do
  
  subject { page }
  
  describe "home page" do
    before { visit root_path }
    
    it { should have_content("Sign in") }
    it { should have_title("Sign in") }
  end 
end
