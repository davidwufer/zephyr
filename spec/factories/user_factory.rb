FactoryGirl.define do
  sequence :sequenced_email do |n|
    "dwu@dwu_factory#{n}.com"
  end

  factory :user do
    first_name "David"
    last_name "Wu"
    username "dwu"
    email { generate(:sequenced_email) }
    password "alleria123"
    password_confirmation "alleria123"
  end
end