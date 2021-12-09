module MyEnumerable
  def all?
    @list.each{|n| return false unless yield n}
    true
  end
  
  def any?
      @list.each{|n| return true if yield n}
      false
  end
  
end