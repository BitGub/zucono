FactoryGirl.define do
  factory :user do
    first_name     "Example"
    surname  "Guy"
    email    "guy@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end