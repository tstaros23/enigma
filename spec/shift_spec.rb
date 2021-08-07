require './lib/keys'
require 'date'

RSpec.describe Shift do
  it "exists " do
    shift = Shift.new

    expect(shift).to be_a(Shift)
  end
  it "has keys" do
    shift = Shift.new

    expect(shift.keys).to eq(
      {
        A: => 02,
        B: => 27,
        C: => 71,
        D: => 20
      }
    )
  end
end
