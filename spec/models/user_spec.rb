require 'spec_helper'

  describe User do
    
    before { @user = User.new(first_name: "Example", surname: "User", email: "user@example.com") }

    subject { @user }

    it { should respond_to(:first_name) }
    it { should respond_to(:surname) }
    it { should respond_to(:email) }
    
    it { should be_valid }
    
    describe "when first name is not present" do
        before { @user.first_name = " " }
        it { should_not be_valid }
    end
      
    describe "when surname is not present" do
      before { @user.surname = " " }
      it { should_not be_valid }
    end
    
    describe "when email is not present" do
      before { @user.email = " " }
      it { should_not be_valid }
    end
  end
