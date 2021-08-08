require './lib/offset'
require './lib/key'
require './lib/encrypt'
require 'date'

RSpec.describe Encrypt do
  it "exists" do
    encrypt = Encrypt.new
  end

  it "can create shifts" do
    encrypt = Encrypt.new
    key = Key.new
    random_key = "02715"
    offset = Offset.new

    key.create_shift_keys(random_key)
    expect(encrypt.create_shifts).to eq()
  end
end
