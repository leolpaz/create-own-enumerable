require_relative 'MyEnumerable.rb'

class MyList
  include MyEnumerable
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
    @list   
  end

end

list = MyList.new(1,2,3,4,7)

list.each{|n| p n*2}

p list.any? {|e| e > 5}
