require 'spec_helper'

describe "AdminUserPages" do
  
  subject { page }
  
  describe "dashboard" do
    let(:user) { FactoryGirl.create(:admin_user) }
    before(:each) do
      sign_in user
      visit admin_dashboard_path
    end
  
  it { should have_title('Dashboard') }
  
  end
  
  describe "new user page" do
    
    before { visit new_admin_user_path }
    
    let(:submit) { "Create User" }
    
    it { should have_title('New User') }
  
    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end
    
    describe "after submission" do
    before { click_button submit }

    it { should have_title('New User') }
    it { should have_content('error') } 
  end
  end
end