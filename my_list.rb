require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*numbers)
    @list = []
    numbers.each { |number| @list.push(number) }
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
