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
    
    describe "with valid information" do
      let(:user) { FactoryGirl.create(:admin_user) }
      before do
        fill_in "Email",    with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign in"
      end

        it { should have_content("Signed in as:#{user.first_name} #{user.surname}") }
        it { should have_link('Products',    href: products_path) }
        it { should have_link('Stock',      href: stocks_path) }
        it { should have_link('Orders',      href: "#") }
        it { should have_link('Sign out',    href: signout_path) }
        
      describe "followed by signout" do
            before { click_link "Sign out" }
            it { should_not have_content("Signed in as:#{user.first_name} #{user.surname}") }
            it { should_not have_link('Products',    href: products_path) }
            it { should_not have_link('Stock',      href: stocks_path) }
            it { should_not have_link('Orders',      href: "#") }
            it { should_not have_link('Sign out',    href: signout_path) }
      end
    end
  end
end
