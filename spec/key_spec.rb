require './lib/key'
require 'date'

RSpec.describe Key do
  xit "exists " do
    key = Key.new

    expect(key).to be_a(Key)
  end
  it "can create keys" do
    key = Key.new

    expect(key.create_shift_keys("02715")).to eq(
      {
        :A => 2,
        :B => 27,
        :C => 71,
        :D => 15
      }
    )
  end
end
