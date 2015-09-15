describe Parser do
  let(:parser) { Parser.new }
  context 'tokenize' do
    let(:str) { 'PLACE 0,   0,NORTH MOVE REPORT' }
    before { parser.tokenize str}
    it { expect(parser.tokens.count).to eq 6 }
    it { expect(parser.pos).to eq 0 }
  end

  context 'place' do
    let(:str) { 'PLACE 0, 0, NORTH' }
    let(:robot) { parser.robot }
    before { parser.process str}
    it { expect(robot.position).to eq({ x:0, y: 0}) }
    it { expect(robot.direction).to eq :north }
  end
end
