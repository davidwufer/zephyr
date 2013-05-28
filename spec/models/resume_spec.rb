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
