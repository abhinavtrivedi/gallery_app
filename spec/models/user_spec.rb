require 'spec_helper'

describe User do

  before do
    @user = User.new(:name => "New User", :email => 'newuser@galleryapp.com')
  end

  subject @user

  it "should respond to name" do
    should respond_to :name
  end

  it "should have a non-blank name" do
    @user.name = ""
    should_not be_valid
  end

  it "should respond email" do
    should respond_to :email
  end

  it "should have a non-blank email" do
    @user.email = ""
    should_not be_valid
  end

end
