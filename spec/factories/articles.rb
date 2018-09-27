FactoryGirl.define do
  factory :article do
    sequence(:name) {|n| "文章#{n}"}
    article_type "IT"
    association :user

    trait :with_chapters do
      after(:create) {|article| create_list(:chapter, 5, article: article)}
    end
  end
end
