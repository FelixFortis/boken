require 'spec_helper'

describe User do

  describe "ignup" do
    before :each do
      @new_user = FactoryGirl.create(:user)
    end

    it "accepts a new user with valid credentials" do
      @new_user.should be_valid
    end

    it "declines new users with an empty username" do
      @new_user.username = ""
      @new_user.should_not be_valid
    end

    it "declines new users with an invalid email" do
      @new_user.email = "millhouse"
      @new_user.should_not be_valid
    end

    it "declines new users with a blank email" do
      @new_user.email = ""
      @new_user.should_not be_valid
    end

    it "declines new users with an empty password" do
      @new_user.password = ""
      @new_user.should_not be_valid
    end

    it "declines new users with an invalid password" do
      @new_user.password = "nil"
      @new_user.should_not be_valid
    end
  end
end
