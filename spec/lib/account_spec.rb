require 'spec_helper'

describe Account, "when first created" do
  it "should have a balance of $0" do
    account = Account.new
    account.should be_empty
  end
end