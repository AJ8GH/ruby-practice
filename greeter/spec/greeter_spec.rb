require 'greeter'

describe 'Greeter' do
  it 'greets Rico' do
    expect(greet('Rico')).to eq 'Hello, Rico, how are you today?'
  end

  it 'greets other names too' do
    expect(greet('Adam')).to eq 'Hello, Adam, how are you today?'
  end
end
