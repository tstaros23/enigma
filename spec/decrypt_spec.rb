require './lib/key'
require './lib/offset'
require './lib/encrypt'
require './lib/decrypt'

RSpec.describe Decrypt do
  it "exists" do
    key =   {
        :A => 2,
        :B => 27,
        :C => 71,
        :D => 15
      }

    offset = {
      :A => 4,
      :B => 0,
      :C => 4,
      :D => 1
    }

    decrypt = Decrypt.new("nefau qdxly", key, offset)

    expect(decrypt).to be_a(Decrypt)
  end

  it "text" do
    key =   {
        :A => 2,
        :B => 27,
        :C => 71,
        :D => 15
      }

    offset = {
      :A => 4,
      :B => 0,
      :C => 4,
      :D => 1
    }

    decrypt = Decrypt.new("nefau qdxly", key, offset)

    expected = "hello world"
    # "petnw dqzll"
    expect(decrypt.decrypt).to eq(expected)
  end
end
