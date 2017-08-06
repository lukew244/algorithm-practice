class QuickUnion
  attr_reader :array

  def initialize(n)
    @array = (0..n).to_a
  end

  def connected?(a, b)
    a_root = find_root(array[a], a)
    b_root = find_root(array[b], b)
    array[a_root] == array[b_root]
  end

  def union(a, b)
    a_root = find_root(array[a], a)
    b_root = find_root(array[b], b)
    array[a_root] = array[b_root]
  end

  def find_root(value, index)
    while value != array[index]
      value = array[index]
    end
    value
  end
end
