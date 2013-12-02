FactoryGirl.define do
  factory :supplier do
    sequence(:name)       { |n| "Supplier#{n}" }
    sequence(:telephone)  { |n| "0208#{n}65#{n}221" }
    sequence(:fax)        { |n| "0208#{n}65#{n}222" }
    sequence(:email)      { |n| "foo#{n}@supplier.com" } 
    notes                 "Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
                          sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                          Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
                          nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
                          reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                          Excepteur sint occaecat cupidatat non proident, sunt in culpa qui 
                          officia deserunt mollit anim id est laborum."
  end
end