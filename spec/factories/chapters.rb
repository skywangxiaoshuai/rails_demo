FactoryGirl.define do
  factory :chapter do
    sequence(:name) {|n| "章节#{n}"}
    comment "MyString"
    size 1999
    association :article
  end
end
