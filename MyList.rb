class MyList
  def initialize(*numbers)
    @list = []
    numbers.each{|number| @list.push(number)}
  end

  def each
    return to_enum(:each) unless block_given?
    i = 0
    while i < @list.length
      yield @list[i]
      i += 1
    end
    self    
  end

end

list = MyList.new(1, 2, 3, 4)

list.each{|n| p n*2}
