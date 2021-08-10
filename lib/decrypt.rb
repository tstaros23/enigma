require './lib/key'
require './lib/offset'
require './lib/encrypt'

class Decrypt
  attr_reader :alphabet, :cyphertext, :key, :offset

  def initialize(cyphertext, key, offset)
    @alphabet = (("a".."z").to_a << " ")
    @cyphertext = cyphertext
    @random_key = key
    @offset = offset
  end

  def create_shifts
      shifts = Hash.new
      @random_key.each do |key, value|
        shifts[key] = value + @offset[key]
      end
      shifts
  end

  def decrypt
    chars = @cyphertext.split("")
    decrypted = ""
    shifts = create_shifts.values

    chars.each do |char|
      if @alphabet.include? char

          index = @alphabet.index(char)
          shift_index = (index - shifts.first) % 27
          decrypted << @alphabet[shift_index]
      else
        decrypted << char
      end
      shifts = shifts.rotate
    end
    decrypted
  end
end
