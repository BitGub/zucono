require 'spec_helper'

describe "SupplierPages" do
  
  subject { page }
  
  describe "index" do
    let(:admin) { FactoryGirl.create(:admin_user) }
    before do
      sign_in admin
      click_link("Suppliers")
    end
    
    it { should have_content("Listing suppliers") }
  end
end