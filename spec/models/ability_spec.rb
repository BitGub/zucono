require 'spec_helper'
require 'cancan/matchers'

describe Ability do
  
  describe 'administrator' do
    before(:each) do
      @admin = FactoryGirl.create(:admin_user)
      @ability = Ability.new(@admin)
    end
    
    it "should be able to manage all" do
      @ability.should be_able_to :manage, :all
    end
  end
end