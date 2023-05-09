require './lib/card'
require './lib/turn'

RSpec.describe Turn do
  it 'exists' do
      card_1 = Card.new("Who's the dawg?", "Luca", :Pets)
      turn = Turn.new("Luca", card_1)

      expect(turn).to be_instance_of(Turn)
    end

  it 'has a guess' do
    card_1 = Card.new("Who's the dawg?", "Luca", :Pets)
    turn = Turn.new("Luca", card_1)

    expect(turn.guess).to eq("Luca")
  end

  it 'has a card' do
    card_1 = Card.new("Who's the dawg?", "Luca", :Pets)
    turn = Turn.new("Luca", card_1)

    expect(turn.card).to eq(card_1)
  end

  it 'can confirm guess is correct' do
    card_1 = Card.new("Who's the dawg?", "Luca", :Pets)
    turn = Turn.new("Luca", card_1)

    expect(turn.correct?).to eq(true)
  end

  it 'can confirm guess is wrong' do
    card_1 = Card.new("Who's the dawg?", "Luca", :Pets)
    turn = Turn.new("Spot", card_1)

    expect(turn.correct?).to eq(false)
  end

  it 'can give positive feedback on answer' do
    card_1 = Card.new("Who's the dawg?", "Luca", :Pets)
    turn = Turn.new("Luca", card_1)

    expect(turn.feedback).to eq("Correct!")
  end

  it 'can give negative feedback on answer' do
    card_1 = Card.new("Who's the dawg?", "Luca", :Pets)
    turn = Turn.new("Spot", card_1)

    expect(turn.feedback).to eq("Incorrect.")
  end

end

    