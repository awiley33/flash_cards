RSpec.describe Turn do
  it 'exists' do
      turn = Turn.new("Luca", card_1)

      expect(turn).to be_instance_of(Turn)
  end

  it 'has a guess' do
    turn = Turn.new("Luca", card_1)

    expect(turn.guess).to eq("Luca")
  end

  it 'has a card' do
    turn = Turn.new("Luca", card_1)

    expect(turn.card).to eq(card_1)
  end
  