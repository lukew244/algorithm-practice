require 'quick_find'

describe QuickFind do
  subject(:quickfind) { described_class.new(15) }

  it 'returns true if two nodes are connected' do
    expect(quickfind.connected?(1,5)).to be false
    quickfind.union(1,5)
    expect(quickfind.connected?(1,5)).to be true
  end

  it 'connects two node chains' do
    quickfind.union(1,5)
    quickfind.union(1,3)
    quickfind.union(2,5)
    quickfind.union(4,6)
    quickfind.union(4,6)
    expect(quickfind.connected?(3,5)).to be true
    expect(quickfind.connected?(1,2)).to be true
    expect(quickfind.connected?(2,6)).to be false

  end
end
