FactoryGirl.define do
  factory :user do
    first_name            "Example"
    surname               "Guy"
    sequence(:email)      { |n| "foo#{n}@zucono.com" } 
    password              "foobar"
    password_confirmation "foobar"
  end
  
  factory :admin_user, :parent => :user do
    role { FactoryGirl.create(:admin_role) }
  end
  
  factory :manager_user, :parent => :user do
    role { FactoryGirl.create(:manager_role) }
  end
  
  factory :shift_manager_user, :parent => :user do
    role { FactoryGirl.create(:shift_manager_role) }
  end
  
  factory :supplier_user, :parent => :user do
    role { FactoryGirl.create(:supplier_role) }
  end
end