require_relative './my_enumerable.rb'

class MyList

  include MyEnumerable
  
  def initialize(*list)
    @list = list
  end

  def each
    @list.each { |x| yield x }
  end

end

list = MyList.new(1, 2, 3, 4)

puts list.all? { |e| e < 5}
puts list.all? { |e| e > 5}

puts list.any? {|e| e == 2}
puts list.any? {|e| e == 5}

puts list.filter { |e| e.even? }
