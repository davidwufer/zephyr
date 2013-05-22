require 'spec_helper'

describe "visiting the home page" do
  it "should have the right title" do
    visit '/'
    page.title
    page.should have_title('Zephyr')
  end
end