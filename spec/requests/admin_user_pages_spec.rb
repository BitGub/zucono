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
    
    let(:user) { FactoryGirl.create(:admin_user) }
    before(:each) do
      sign_in user
      visit new_admin_user_path
    end
    
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
    
    describe "with valid information", :js => true do

      before(:all) do 
        FactoryGirl.create(:admin_role)
        FactoryGirl.create(:manager_role)
        FactoryGirl.create(:shift_manager_role)
        FactoryGirl.create(:supplier_role) 
      end
      after(:all)  { Role.delete_all }

      before do 
        fill_in "First name",            with: "first name"
        fill_in "Surname",               with: "surname"
        fill_in "Email",                 with: "example@gmail.com"
        fill_in "Password",              with: "userpassword"
        fill_in "Password confirmation", with: "userpassword"
        select("MANAGER", :from => "user_role_id")
        click_button submit
      end
      
      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
  
end