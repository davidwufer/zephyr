require 'spec_helper'

describe "visiting the home page" do
  it "should have the right title" do
    visit '/'
    page.title
    page.should have_title('Zephyr')
  end
end

describe "/sign_up" do
  it 'should be successful' do
    visit '/sign_up'
  end

  it 'should redirect to the sign up page'
end

describe "/sign_in" do
  it 'should be successful' do
    visit '/sign_in'
  end

  it 'should redirect to the sign in page'
end