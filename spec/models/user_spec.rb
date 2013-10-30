require 'spec_helper'

  describe User do
    
    before { @user = User.new(first_name: "Example", surname: "User", email: "user@example.com") }

    subject { @user }

    it { should respond_to(:first_name) }
    it { should respond_to(:surname) }
    it { should respond_to(:email) }
    it { should respond_to(:password_digest) }
    
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
    
    describe "when email format is invalid" do
      it "should be invalid" do
        addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                       foo@bar_baz.com foo@bar+baz.com]
        addresses.each do |invalid_address|
          @user.email = invalid_address
          expect(@user).not_to be_valid
        end
      end
    end
    
  describe "when email address is already taken" do
      before do
        user_with_same_email = @user.dup
        user_with_same_email.email = @user.email.upcase
        user_with_same_email.save
      end

      it { should_not be_valid }
    end
  end
