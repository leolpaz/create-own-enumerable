module MyEnumerable
  def all?
    @list.each { |n| return false unless yield n }
    true
  end

  def any?
    @list.each { |n| return true if yield n }
    false
  end

  def filter
    temp_arr = []
    @list.each { |n| temp_arr.push(n) if yield n }
    temp_arr
  end
end
