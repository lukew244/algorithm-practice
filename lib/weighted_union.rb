class WeightedUnion
  attr_reader :array, :size

  def initialize(n)
    @array = (0..n).to_a
    @size = Array.new(n, 1)
  end

  def connected?(a, b)
    a_root = find_root(array[a], a)
    b_root = find_root(array[b], b)
    array[a_root] == array[b_root]
  end

  def union(a, b)
    a_root = find_root(array[a], a)
    b_root = find_root(array[b], b)
    return if a_root == b_root

    if size[a_root] < size[b_root]
      merge_smaller_tree(a_root, b_root)
    else
      merge_smaller_tree(b_root, a_root)
    end
  end

  def merge_smaller_tree(smaller, larger)
    array[smaller] = array[larger]
    size[larger] += size[smaller]
  end

  def find_root(value, index)
    while value != array[index]
      array[index] = array[array[index]]
      value = array[index]
    end
    value
  end
end
