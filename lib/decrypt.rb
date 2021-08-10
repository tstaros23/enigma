require './lib/key'
require './lib/offset'
require './lib/encrypt'

class Decrypt
  attr_reader :alphabet, :message, :key_shifts, :offset

  def initialize(message, key_shifts, offset)
    @alphabet = (("a".."z").to_a << " ")
    @message = message.downcase
    @key_shifts = key_shifts
    @offset = offset
  end


  def create_shifts
      shifts = Hash.new
      @key_shifts.each do |key, value|
        shifts[key] = value + @offset[key]
      end
      shifts
  end

  def decrypt
    chars = @message.split("")
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
