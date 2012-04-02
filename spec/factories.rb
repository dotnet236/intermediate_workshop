FactoryGirl.define do
  factory :shout do
    user
  end

  factory :user do
    email = 'Test Email'
  end
end
