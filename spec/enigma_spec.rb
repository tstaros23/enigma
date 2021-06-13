require_relative 'spec_helper'
require 'date'
require './lib/engine'

RSpec.describe Engine do
  describe 'instantiation' do
    it 'exists' do
      enigma = Enigma.new
    end

    it "can encrypt a message with a key and date" do

      enigma = Enigma.new
      expect(enigma.encrypt).to eq("hello world", "02715", "040895")
    end
    it "can decrypt a message with a key and date" do
      expect(enigma.decrypt).to eq(encrypted[:encrypted], "02715")

    end
  end
end
