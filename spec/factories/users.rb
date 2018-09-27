FactoryGirl.define do
  factory :user do
    name "测试用"
    sequence(:email) { |n| "tester#{n}@gmail.com"}
    address "上海浦东新区"
    phone "17521180090"
    age 12

    trait :zhangsan do
      name "zhangsan"
    end

    trait :with_articles do
      after(:create) {|user| create_list(:article, 5, :with_chapters, user: user)}
    end
  end
end
