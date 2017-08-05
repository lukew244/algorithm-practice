class QuickFind
  attr_reader :array

  def initialize(n)
    @array = (0..n).to_a
  end

  def connected?(a , b)
    array[a] == array[b]
  end

end
