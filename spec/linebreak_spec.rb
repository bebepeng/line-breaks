require 'linebreak'

describe LineBreak do
  it 'breaks up lines of text by 80 characters default' do
    input = 'asdfkawent kjsetchan nnternsitn sntir itlk asdfkawent kjsetchan nnternsitn sntir itlk k'
    broken_line = LineBreak.new(input)
    expect(broken_line.split).to eq 'asdfkawent kjsetchan nnternsitn sntir itlk asdfkawent kjsetchan nnternsitn
sntir itlk k'
  end

  it 'breaks up lines of text by 20 characters default' do
    input = "Jean shorts you probably haven't heard of them farm-to-table.

Another line."
    broken_line = LineBreak.new(input)
    expect(broken_line.split(20)).to eq "Jean shorts you
probably haven't
heard of them
farm-to-table.
Another line."
  end

end