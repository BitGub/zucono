require 'spec_helper'

describe "AdminUserPages" do
  
  subject { page }
  
  describe "dashboard" do
    let(:user) { FactoryGirl.create(:admin_user) }
    before(:each) do
      sign_in user
      visit admin_dashboard_path(user)
    end
  end
  
  it { should have_title("Dashboard") }
end