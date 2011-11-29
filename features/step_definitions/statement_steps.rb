Given /^I'm a bank customer$/ do
  @account = Account.new
end

Given /^I have (\d+) bank releases$/ do |releases|
  releases.to_i.times do 
    @account.add_release( :date => Time.at(rand * Time.now.to_i), :value => rand(100) )
  end
end

When /^I get my bank statement$/ do
end

Then /^I should have my (\d+) releases sorted by date$/ do |arg1|
  @account.statement.should == @account.releases.sort_by{ |r| r[:date] }
end