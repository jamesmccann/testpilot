# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :app do
    sequence(:name) { |n|  "Test App #{n}" }
    after(:build) { |a| a.valid? }

    trait :with_single_build do
      after(:build) do |instance|
        instance.builds = [FactoryGirl.build(:build)]
      end
    end
  end
end
