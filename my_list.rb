require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*numbers)
    @list = numbers
  end

  def to_s
    @list
  end

  def each(&block)
    @list.each(&block)
  end
end
