require 'spec_helper'

describe "SupplierPages" do
  
  subject { page }
  
  describe "index" do
    let(:admin) { FactoryGirl.create(:admin_user) }
    before do
      sign_in admin
      click_link suppliers_path
    end
    
    it { should_have content("Suppliers") }
  end
end