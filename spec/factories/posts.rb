FactoryBot.define do
  factory :post do
    title {"aaa"}
    body {"hello!"}
    image    {"'app/assets/images/Barrier-free-jpg'"}
    user
  end
end