# == Schema Information
#
# Table name: resumes
#
#  id                  :integer          not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#  resume_file_name    :string(255)
#  resume_content_type :string(255)
#  resume_file_size    :integer
#  resume_updated_at   :datetime
#

require 'spec_helper'

describe Resume do

  describe 'user' do 
    before(:each) do
      @user = FactoryGirl.create(:user)
      @resume = @user.resumes.create!

    end


    it 'should respond to user' do 
      @resume.should respond_to(:user)
    end

    it 'should return the correct user' do
      @resume.user.should == @user
    end
  end

end
