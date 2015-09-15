describe Parser do
  let(:parser) { Parser.new }
  let(:str) { 'PLACE 0,   0,NORTH MOVE REPORT' }
  before { parser.input s tr}
  it { expect(parser.tokens.count).to eq 6 }
  it { expect(parser.pos).to eq 0 }
end
