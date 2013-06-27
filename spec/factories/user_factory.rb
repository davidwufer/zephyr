# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  username               :string(255)      not null
#  first_name             :string(255)      not null
#  last_name              :string(255)      not null
#

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
