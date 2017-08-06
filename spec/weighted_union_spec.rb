require 'weighted_union'

describe WeightedUnion do
  subject { described_class.new(15) }

  it 'returns true if two nodes are connected' do
    expect(subject.connected?(1,5)).to be false
    subject.union(1,5)
    expect(subject.connected?(1,5)).to be true
  end

  it 'connects two node chains' do
    subject.union(1,5)
    subject.union(1,3)
    subject.union(2,5)
    subject.union(4,6)
    subject.union(4,6)
    expect(subject.connected?(3,5)).to be true
    expect(subject.connected?(1,2)).to be true
    expect(subject.size[1]).to eq 4
    expect(subject.size[2]).to eq 1
    expect(subject.size[4]).to eq 2
    expect(subject.connected?(2,6)).to be false

  end
end
