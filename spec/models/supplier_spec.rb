require 'spec_helper'

  describe Supplier do
    
    before do 
      @supplier = FactoryGirl.create(:supplier)
    end
    
    subject { @suppiler }
    
    it { should respond_to(:name) }
    it { should respond_to(:telephone) }
    it { should respond_to(:fax) }
    it { should respond_to(:email) }
    it { should respond_to(:payment_method) }
    it { should respond_to(:notes) }
    
    it { should be_valid }
  end