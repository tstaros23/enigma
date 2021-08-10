require_relative 'spec_helper'
require 'date'
require './lib/enigma'

RSpec.describe Enigma do
  describe 'instantiation' do
    it 'exists' do
      enigma = Enigma.new
    end

    it "can encrypt a message with a key and date" do

      enigma = Enigma.new
      expect(enigma.encrypt("hello world", "02715", "040895")).to eq(
        {
          encryption: "keder ohulw",
          key: "02715",
          date: "040895"
        }
      )
    end
    it "can decrypt a message with a key and date" do
      enigma = Enigma.new
      expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq(
        {
          decryption: "hello world",
          key: "02715",
          date: "040895"
        }
      )

    end
  end
end
