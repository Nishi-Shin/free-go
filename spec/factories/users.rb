FactoryBot.define do
  factory :user do
    username                 {"aaa"}
    password                 {"000000"}
    password_confirmation    {"000000"}
    sequence(:email)     {Faker::Internet.email}
  end
end