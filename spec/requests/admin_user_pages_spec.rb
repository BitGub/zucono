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
    
    it { should have_title('New User') }
  end
end