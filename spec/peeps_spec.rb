require 'Peeps'

describe '.all' do
  it "returns a list of all peeps, in reverse chronological order" do
    peeps = Peeps.all
    expect(peeps).to include "This is my third peep!"
    expect(peeps).to include "This is my second peep!"
    expect(peeps).to include "This is my first peep!"
  end
end