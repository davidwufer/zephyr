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
#

require 'spec_helper'

describe User do
  let(:attr) do
    { 
      username: 'david_wu.47',
      first_name: 'David',
      last_name: 'Wu',
      email: 'dwu@dwu.com', 
      password: 123456789,
      password_confirmation: 123456789
    }
  end

  it 'should be successfully created with the right attributes' do
    User.create!(attr)
  end

  describe 'username' do
    it 'should respond to username' do
      user = User.new
      user.should respond_to(:username)
    end

    it 'should contain only lower-case alphanumerics, dots, and underscores' do
      invalid_attr = attr.merge(username: 'dwu!')
      User.new(invalid_attr).should_not be_valid
    end

    it 'should not be nil' do 
      invalid_attr = attr.merge(username: '')
      User.new(invalid_attr).should_not be_valid      
    end

    describe 'before_validation' do
      it 'should lower-case the username' do
        new_attr = attr.merge(username: 'DAVID')
        User.create!(new_attr).username.should == 'david'
      end

    end
  end

  describe 'first_name' do
    it 'should respond to first_name' do
      user = User.new
      user.should respond_to(:first_name)
    end

    it 'cannot start with whitespace' do
      user = User.new(attr.merge(first_name: ' david'))
      user.should_not be_valid
    end

    it 'cannot end with whitespace' do
      user = User.new(attr.merge(first_name: 'david '))
      user.should_not be_valid
    end

    it 'should not be nil' do 
      user = User.new(attr.merge(first_name: ''))
      user.should_not be_valid
    end
  end

  describe 'last_name' do
    it 'should respond to last_name' do
      user = User.new
      user.should respond_to(:last_name)
    end

    it 'cannot start with whitespace' do
      user = User.new(attr.merge(last_name: ' david'))
      user.should_not be_valid
    end

    it 'cannot end with whitespace' do
      user = User.new(attr.merge(last_name: 'david '))
      user.should_not be_valid
    end

    it 'should not be nil' do
      user = User.new(attr.merge(last_name: ''))
      user.should_not be_valid
    end
  end
end
