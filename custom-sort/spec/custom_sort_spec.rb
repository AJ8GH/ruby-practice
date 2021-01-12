require 'custom_sort'

describe '#custom_sort' do
  it 'returns [] when given empty array' do
    expect(custom_sort([])).to eq []
  end

  it 'returns [1] for a single element array [1]' do
    expect(custom_sort([1])).to eq [1]
  end

  it 'returns [1, 2] for [2, 1]' do
    expect(custom_sort([2, 1])).to eq [1,2]
  end

  it 'sorts larger arrays with duplicates correctly' do
    expect(custom_sort([4,7,3,5,8,9,5,3,4,6,7,8,4,3,1,1,5])).to eq [4,7,3,5,8,9,5,3,4,6,7,8,4,3,1,1,5].sort
  end

  it 'sorts this long array' do
    expect(custom_sort([7, 2, 4, 44, 1, 1, 23, 9, 1, 3, 3, 5])).to eq [1, 1, 1, 2, 3, 3, 4, 5, 7, 9, 23, 44]
  end

  it 'sorts letters' do
    expect(custom_sort(['b','a','c'])).to eq ['a','b','c']
  end

  it 'sorts longer strings' do
    expect(custom_sort(['should', 'this', 'world', 'say', 'hello'])).to eq ['should', 'this', 'world', 'say', 'hello'].sort
  end
end
