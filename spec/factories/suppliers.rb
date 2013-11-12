FactoryGirl.define do
  factory :supplier do
    sequence(:name)       { |n| "Supplier#{n}" }
    sequence(:telephone)  { |n| "0208#{n}65#{n}221" }
    sequence(:fax)        { |n| "0208#{n}65#{n}222" }
    sequence(:email)      { |n| "foo#{n}@supplier.com" } 
    password              "foobar"
    password_confirmation "foobar"
  end
end