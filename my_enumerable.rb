module MyEnumerable
  def all?
    each do |number|
      return false unless yield(number)
    end
    true
  end

  def any?
    each do |number|
      return true if yield(number)
    end
    false
  end

  def filter
    filtered = []
    each do |number|
      filtered << number if yield(number)
    end
    filtered
  end
end
