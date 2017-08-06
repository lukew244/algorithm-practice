class QuickFind
  attr_reader :array

  def initialize(n)
    @array = (0..n).to_a
  end

  def connected?(a , b)
    array[a] == array[b]
  end

  def union(a, b)
    a_id = array[a]
    b_id = array[b]

    array.each_index do |index|
      if array[index] == a_id
        array[index] = b_id
      end
    end
  end
end
