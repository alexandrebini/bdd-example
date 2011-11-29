class Account
  attr_reader :value, :releases
  
  def initialize
    @value = 0
    @releases = []
  end
  
  def empty?
    @value == 0
  end
  
  def add_release(release)
    @releases << release
    @value += release[:value]
  end
  
  def statement
    @releases.sort_by{ |r| r[:date] }
  end
  
end